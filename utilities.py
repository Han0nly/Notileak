# 1. iterate over the lib folder
# 2. if find a *.aar file, unzip this file to a folder.
# 3. get the class.jar file in the generated folder.
# 4. use the dx script to convert the class.jar file to dex file.
# 5. use LibPecker.jar to
import json
import os
import zipfile
import subprocess
import shutil
import platform

import pymongo
from pymongo import MongoClient

aar_dir = './bin/notification-lib/aar/'
# store the temp file extracted from aar file.
temp_dir = './bin/notification-lib/temp/'
# store the class.jar file from the temp_dir
jar_dir = './bin/notification-lib/jar/jar_extracted/'
# jar_dir = 'notification-lib/jar/error/'
# store the jar files that cannot be successfully converted into dex file.
convert_success_jar_dir = './bin/notification-lib/jar/success/'
# store the jar files that are successfully converted into dex file.
convert_error_jar_dir = './bin/notification-lib/jar/error/'
# convert_error_jar_dir = 'notification-lib/jar/jar_extracted/'
dex_dir = './bin/notification-lib/dex/'
# dex_dir = './bin/notification-lib/test/'
apk_dir = '/Volumes/TOSHIBA/apks/Google/'
# apk_dir = './bin/apks/'
# Flowdroid Result dir
flow_result = './bin/flow_result/'
source_sink_file = ''
android_home = ''


def execute_cmd(cmd):
    """ status: 0: success, 1: error
       ret: success: stdout, error: stderr
    """
    status, ret = subprocess.getstatusoutput(cmd)
    # if status == 0:
    #     print('[SUCCESS] %s' % cmd)
    # else:
    #     print('[ERROR] %s' % cmd)
    #     print(ret)
    return status, ret


def findAllFile(base, ext):
    for root, ds, fs in os.walk(base):
        for f in fs:
            if f.endswith(ext):
                fullname = os.path.join(root, f)
                yield fullname


def aar2jar(aardir):
    jar_list = []
    for i in findAllFile(aardir, 'aar'):
        extract_jar_path = temp_dir + i.split('/')[-1][:-4]
        with zipfile.ZipFile(i, 'r') as zip_ref:
            zip_ref.extractall(extract_jar_path)
        class_jar_file = extract_jar_path + '/classes.jar'
        dest_file = jar_dir + i.split('/')[-1][:-3] + 'jar'
        shutil.copyfile(class_jar_file, dest_file)
        jar_list.append(dest_file)
    shutil.rmtree(temp_dir)
    return jar_list


def jar2dex(jardir):
    error_list, succ_list = [], []
    for i in findAllFile(jardir, 'jar'):
        dex_file = dex_dir + i.split('/')[-1][:-3] + 'dex'
        dx_command = './dx --dex --output=' + dex_file + ' ' + i
        if sys_type == "Windows":
            dx_command.replace('/', '\\')
        (exec_stat, exec_output) = execute_cmd(dx_command)
        # execute error
        if exec_stat:
            print('[ERROR] %s' % dx_command)
            print(exec_output)
            error_list.append(i)
            # move(i, convert_error_jar_dir + i.split('/')[-1][:-3]+'jar')
        # execute success
        else:
            print('[SUCCESS] %s' % dx_command)
            # move(i, convert_success_jar_dir + i.split('/')[-1][:-3]+'jar')
            succ_list.append(i)
            # dex_list.append(dex_file)

    for j in succ_list:
        shutil.move(j, convert_success_jar_dir + j.split('/')[-1][:-3] + 'jar')
    for k in error_list:
        shutil.move(k, convert_error_jar_dir + k.split('/')[-1][:-3] + 'jar')


def runLibPecker(apkdir, dexdir):
    # iterate all the apks
    for apk in findAllFile(apkdir, 'apk'):
        result = {}
        result['app_mame'] = apk.split('/')[-1]
        print(result['app_mame'])
        if col.find_one(result):
            continue
        else:
            result['result'] = {}
            # compute the similarity of this apk with every library.
            for dex in findAllFile(dexdir, 'dex'):
                libPecker_command = 'java -jar LibPecker.jar ' + apk + ' ' + dex
                if sys_type == "Windows":
                    libPecker_command.replace('/', '\\')
                (exec_stat, exec_output) = execute_cmd(libPecker_command)
                if exec_stat == 0:
                    print('[SUCCESS] %s' % libPecker_command)
                    if len(exec_output) > 50:
                        break
                    else:
                        similarity = float(exec_output.split('\n')[0].split(":")[1].strip())
                        print(similarity)
                        result['result'][dex.split('/')[-1][:-4]] = similarity
                    # libs_simi_list.append(lib_simi_dict)
                else:
                    print('[ERROR] %s' % libPecker_command)
            col.insert(result, check_keys=False)


def runFlowDroid(apkdir: str, resultdir: str) -> None:
    # iterate all the apks
    for apk in findAllFile(apkdir, 'apk'):
        result = {}
        result['app_mame'] = apk.split('/')[-1]
        print(result['app_mame'])
        if sys_type == "Windows":
            result_xml = resultdir + apk.split('\\')[-1] + ".xml"
        else:
            result_xml = resultdir + apk.split('/')[-1] + ".xml"
        if os.path.isfile(result_xml):
            print("[Already Exist]: %s" % result_xml)
            continue
        else:
            flowDroid_command = 'java -jar soot-infoflow-cmd-jar-with-dependencies.jar -a ' + apk + \
                                " -p " + android_home + " -s " + source_sink_file + \
                                " -d -on -ol -cp -ps -r -ct 600 -dt 600 -rt 600 -o " + result_xml
            (exec_stat, exec_output) = execute_cmd(flowDroid_command)
            if exec_stat == 0:
                print('[SUCCESS] %s' % flowDroid_command)
                # libs_simi_list.append(lib_simi_dict)
            else:
                print('[ERROR] %s' % flowDroid_command)
            print(exec_output)


def mongodb_init(index_exist: bool):
    client = MongoClient()
    db = client['Notileaks']
    collection = db['LibPecker']
    if index_exist:
        result = collection.create_index('app_mame', unique=True)
    return collection


if __name__ == '__main__':
    sys_type = platform.system()
    # dex_list = []
    # aar2jar(aar_dir)
    # jar2dex(jar_dir)
    # 检测当前是windows还是linux
    col = mongodb_init(index_exist=False)
    runLibPecker(apk_dir, dex_dir)
    # runFlowDroid(apk_dir, flow_result)
