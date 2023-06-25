#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
-------------------------------------------------
@File    : analysis_MobSF.py
@Time    : 2021/10/2 3:29 下午
@Author  : Han0nly
@Github  : https://github.com/Han0nly
@Email   : zhangxh@stu.xidian.edu.cn
-------------------------------------------------
"""
import argparse
import pymongo, json
import logging

dbip = '127.0.0.1'
dbport = '27017'
dbname = 'Apps_MobSF'
colname = 'FDA'
big_result_file = ''


class MobSF_result:
    def __init__(self):
        """
        MobSF_result object constructor.
        """
        self.logger = logging.getLogger(f"{__name__}.{self.__class__.__name__}")
        self.dbip = dbip
        self.dbport = dbport
        # if temp_colname:
        #     self.colname = temp_colname
        # else:
        self.colname = colname
        self.dbname = dbname
        self.result = {}
        self._connect()

    ##############################
    # Internal Methods #
    ##############################

    def _connect(self):
        client = pymongo.MongoClient(f'mongodb://{self.dbip}:{self.dbport}')
        db = client[self.dbname]
        self.conn = db[self.colname]
        self.count = self.conn.count_documents({})
        print(self.count)

    ##############################
    # External Methods #
    ##############################

    def write_contents2file(self, file_name: str = 'mobsf_result.json'):
        with open(file_name, 'w+') as f:
            f.write(json.dumps(self.conn.find(), ensure_ascii=False, indent=2))

    def add_api(self, k,i):
        if k in self.result['api_analysis'].keys():
            self.result['api_analysis'][k]["app_count"] = self.result['api_analysis'][k]["app_count"] + 1
            self.result['api_analysis'][k]["min_installs"] = self.result['api_analysis'][k][
                                                                   "min_installs"] + i
        else:
            self.result['api_analysis'][k] = {"app_count": 1, "min_installs": i}

    def api_analysis(self, i):
        if "minInstalls" in i['result']['playstore_details'].keys() and i['result']['playstore_details']['minInstalls']:
            installs = i['result']['playstore_details']['minInstalls']
        else:
            installs = 0
        for key, value in i['result']['android_api'].items():
            self.add_api(key, installs)

    def permission_analysis(self, i):
        for key in i['result']['permissions'].keys():
            if key in self.result['permissions'].keys():
                self.result['permissions'][key] = self.result['permissions'][key] + 1
            else:
                self.result['permissions'][key] = 1

    def tracker_analysis(self, i):
        if "minInstalls" in i['result']['playstore_details'].keys() and i['result']['playstore_details']['minInstalls']:
            installs = i['result']['playstore_details']['minInstalls']
        else:
            installs = 0
        for tracker in i['result']['trackers']['trackers']:
            if tracker['name'] in self.result['trackers'].keys():
                self.result['trackers'][tracker['name']]["app_count"] = self.result['trackers'][tracker['name']][
                                                                            "app_count"] + 1
                self.result['trackers'][tracker['name']]["min_installs"] = self.result['trackers'][tracker['name']][
                                                                               "min_installs"] + installs
            else:
                self.result['trackers'][tracker['name']] = {"app_count": 1, "min_installs": installs}

    def all_analysis(self):
        self.result['api_analysis'] = {}
        self.result['trackers'] = {}
        self.result['permissions'] = {}
        for item in self.conn.find():
            self.api_analysis(item)
            # detect api usage and trackers at same time
            self.api_and_tracker_analysis(item)
            self.permission_analysis(item)
            self.tracker_analysis(item)

    # we should detect these api usage in apps which contain the corresponding sdks.
    # Todo: also, we should filter out those false positive in Third party libraries' sdks.
    def api_and_tracker_analysis(self, i):
        if "minInstalls" in i['result']['playstore_details'].keys() and i['result']['playstore_details']['minInstalls']:
            installs = i['result']['playstore_details']['minInstalls']
        else:
            installs = 0
        for key, value in i['result']['android_api'].items():
            if key.startswith('airship_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('com/urbanairship/'):
                        main_file = True
                        break
                if main_file and 'urbanairship' in [y['name'] for y in i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            elif key.startswith('Kumulos_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('com/kumulos/'):
                        main_file = True
                        break
                if main_file and 'kumulos' in [y['name'] for y in i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            elif key.startswith('Leanplum_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('com/leanplum/'):
                        main_file = True
                        break
                if main_file and 'LeanPlum' in [y['name'] for y in i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            elif key.startswith('Onesignal_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('com/onesignal/'):
                        main_file = True
                        break
                if main_file and 'OneSignal' in [y['name'] for y in i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            elif key.startswith('Pushwoosh_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('com/pushwoosh/'):
                        main_file = True
                        break
                if main_file and 'Pushwoosh' in [y['name'] for y in i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            elif key.startswith('Taplytics_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('com/taplytics/'):
                        main_file = True
                        break
                if main_file and 'Taplytics' in [y['name'] for y in i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            elif key.startswith('Mobpush_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('com/mob/'):
                        main_file = True
                        break
                if main_file and 'Mobpush' in [y['name'] for y in i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            elif key.startswith('Getui_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('com/getui/'):
                        main_file = True
                        break
                if main_file and 'getui' in [y['name'] for y in i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            elif key.startswith('Jpush_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('cn/jpush/') and not use.startswith('cn/jiguang/'):
                        main_file = True
                        break
                if main_file and 'JiGuang Aurora Mobile JPush' in [y['name'] for y in
                                                                   i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            elif key.startswith('Umeng_'):
                main_file = False
                for use in value['files'].keys():
                    if not use.startswith('com/umeng/'):
                        main_file = True
                        break
                if main_file and 'Umeng Analytics' in [y['name'] for y in i['result']['trackers']['trackers']]:
                    self.add_api(key, installs)
            else:
                self.add_api(key, installs)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='This script is used to ')
    parser.add_argument("-p", "--profiles", help="notification library identification result dir")
    parser.add_argument("-f", "--files", help="apk files dir")
    args = parser.parse_args()
    print(args.profiles)
    print(args.files)
    analysis = MobSF_result()
    analysis.all_analysis()
    print(analysis.result['api_analysis'])
    print(analysis.result['permissions']['android_permission_BIND_NOTIFICATION_LISTENER_SERVICE'])
    print(analysis.result['trackers'])
