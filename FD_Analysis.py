import json
import re
from collections import OrderedDict

import xmltodict
import os
from settings import sinks_categories, sources_categories, sdk_pattern


def leak_category(found):
    sink = 'none'
    for category in sinks_categories.keys():
        for sink_term in sinks_categories[category]:
            if sink_term.lower() in found['Sink']['@Method'].lower() or sink_term.lower() in found['Sink']['@Statement'].lower():
                sink = category
                break
        if sink != 'none':
            break

    sources = []
    if isinstance(found['Sources']['Source'], OrderedDict):
        signal = 0
        for category in sources_categories.keys():
            for source_term in sources_categories[category]:
                if source_term.lower() in found['Sources']['Source']['@Method'].lower() or source_term.lower() in \
                        found['Sources']['Source']['@Statement'].lower():
                    signal = 1
                    sources.append(category)
                    break
            if signal == 1:
                break
    elif isinstance(found['Sources']['Source'], list):
        for source in found['Sources']['Source']:
            signal = 0
            for category in sources_categories.keys():
                for source_term in sources_categories[category]:
                    if source_term.lower() in source['@Method'].lower() or source_term.lower() in source[
                        '@Statement'].lower():
                        sources.append(category)
                        break
                if signal == 1:
                    break
    if sink == 'none':
        return 'none'
    if len(sources) == 0:
        return 'none'
    return ('%s:%s' % (set(sources), sink))


def classify_xmls():
    results = {}
    for root, dirs, files in os.walk('FDA_flowresult'):
        print("一共有多少个文件：", len(files))
        for file in files:
            if file[-3:] == "xml":
                file_fullpath = os.path.join(root, file)
                with open(file_fullpath) as f:
                    xml_str = f.readline()
                    # 将xml的字符串解析为字典类型
                    jsonstr = xmltodict.parse(xml_str)
                    results[file[:-4]] = jsonstr
    readable_result = gen_readable_result(results)


def gen_readable_result(raw_result):
    new_result = {}
    for app in raw_result.keys():
        # print(app)
        single_readable = []
        all_result = raw_result[app]['DataFlowResults']
        if 'Results' in all_result.keys():
            result_list = all_result['Results']['Result']
            if isinstance(result_list, OrderedDict):
                leak = leak_category(result_list)
                if leak != 'none':
                    single_readable.append(leak)
            elif isinstance(result_list, list):
                for found in result_list:
                    leak = leak_category(found)
                    if leak != 'none':
                        single_readable.append(leak)

        if len(single_readable) != 0:
            new_result[app] = list(set(single_readable))

    print(new_result)

    statistics_sources = {}
    for i in new_result.keys():
        already = []
        for leak in new_result[i]:
            items = leak.split(':')[0][2:-2]
            for item in items.split(','):
                item = item.strip().strip('\'')
                if item in already:
                    continue
                else:
                    already.append(item)
                    if item in statistics_sources.keys():
                        statistics_sources[item] = statistics_sources[item] + 1
                    else:
                        statistics_sources[item] = 1
    print('These kinds of information are leaked:', statistics_sources)

    statistics_sinks = {}
    for i in new_result.keys():
        already = []
        for leak in new_result[i]:
            item = leak.split(':')[1]
            if item in already:
                continue
            else:
                already.append(item)
                if item in statistics_sinks.keys():
                    statistics_sinks[item] = statistics_sinks[item] + 1
                else:
                    statistics_sinks[item] = 1
    print('Sensitive Information leaks through these way:', statistics_sinks)
    return new_result


def find_sdk_in_xmls():
    results = {}
    for root, dirs, files in os.walk('./flowresult'):
        print(len(files))
        for file in files:
            if file[-3:] == "xml":
                file_fullpath = os.path.join(root, file)
                with open(file_fullpath) as f:
                    text = f.read()
                    # print(text)
                    result = re.findall(sdk_pattern, text, flags=re.IGNORECASE)
                    if len(result) > 0:
                        jsonstr = xmltodict.parse(text)
                        results[file[:-4]] = jsonstr
    readable_result = gen_readable_result(results)


if __name__ == '__main__':
    # classify_xmls()
    find_sdk_in_xmls()
