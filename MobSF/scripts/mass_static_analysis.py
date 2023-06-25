#!/usr/bin/env python
# Mass Static Analysis
import argparse
import json
import logging
import os
import shutil
import urllib.error
import urllib.parse
import urllib.request
import pymongo
import platform
import requests
import time

from collections.abc import Mapping


def rec_key_replace(obj):
    if isinstance(obj, Mapping):
        return {key.replace('.', '_'): rec_key_replace(val) for key, val in obj.items()}
    return obj


logger = logging.getLogger(__name__)


def is_server_up(url):
    try:
        urllib.request.urlopen(url, timeout=5)
        return True
    except urllib.error.URLError:
        pass
    return False


def start_scan(path, server_url, apikey, rescan='0'):
    print('\nLooking for Android/iOS/'
          'Windows binaries or source code in : ' + path)
    logger.info('Uploading to MobSF Server')
    uploaded = []
    mimes = {
        '.apk': 'application/octet-stream',
        '.ipa': 'application/octet-stream',
        '.appx': 'application/octet-stream',
        '.zip': 'application/zip',
    }
    for filename in os.listdir(path):
        srcfile = os.path.join(path, filename)
        finishfile = os.path.join(finishdir, filename)
        if collection.count_documents({"file_name": filename}, limit=1) != 0:
            if not os.path.exists(finishdir):
                os.makedirs(finishdir)
            shutil.move(srcfile, finishfile)
            logger.info("move %s -> %s", srcfile, finishfile)
            continue
        fpath = os.path.join(path, filename)
        _, ext = os.path.splitext(fpath)
        if ext in mimes:
            files = {'file': (filename, open(fpath, 'rb'),
                              mimes[ext], {'Expires': '0'})}
            try:
                response = requests.post(
                    server_url + '/api/v1/upload',
                    files=files,
                    headers={'AUTHORIZATION': apikey})
                time.sleep(1)
            except ConnectionError:
                continue
            if response.status_code == 200 and 'hash' in response.json():
                logger.info('[OK] Upload OK: %s', filename)
                uploaded.append(response.json())
                upl = response.json()
                if rescan == '1':
                    upl['re_scan'] = 1
                response = requests.post(
                    server_url + '/api/v1/scan',
                    data=upl,
                    headers={'AUTHORIZATION': apikey})
                if response.status_code == 200:
                    logger.info('[OK] Static Analysis Complete: %s', upl['file_name'])
                    try:
                        upl['result'] = response.json()
                        upl_withoutdot = rec_key_replace(upl)
                        collection.insert_one(upl_withoutdot)
                    except pymongo.errors.DuplicateKeyError:
                        logger.info(("%s Already Exist!", upl['file_name']))
                    except pymongo.errors.DocumentTooLarge:
                        # print(upl_withoutdot)
                        if '_id' in upl_withoutdot.keys():
                            upl_withoutdot.pop('_id')
                        big_item.append(upl_withoutdot)
                if not os.path.exists(finishdir):
                    os.makedirs(finishdir)
                shutil.move(srcfile, finishfile)
                logger.info("move %s -> %s", srcfile, finishfile)
            else:
                logger.error('Performing Upload: %s', filename)
    #
    # logger.info('Running Static Analysis')
    # for upl in uploaded:
    #     logger.info('Started Static Analysis on: %s', upl['file_name'])
    #     if rescan == '1':
    #         upl['re_scan'] = 1
    #     response = requests.post(
    #         server_url + '/api/v1/scan',
    #         data=upl,
    #         headers={'AUTHORIZATION': apikey})
    #     if response.status_code == 200:
    #         logger.info('[OK] Static Analysis Complete: %s', upl['file_name'])
    #         try:
    #             upl['result'] = response.json()
    #             # upl_withoutdot = remove_dots(upl)
    #             upl_withoutdot = rec_key_replace(upl)
    #             collection.insert_one(upl_withoutdot)
    #             srcfile = os.path.join(path, upl["file_name"])
    #             if not os.path.isfile(srcfile):
    #                 logger.info("%s not exist!" % (srcfile))
    #             # else:
    #             #     if not os.path.exists(finishdir):
    #             #         os.makedirs(finishdir)
    #             #     shutil.move(srcfile, os.path.join(finishdir, upl["file_name"]))
    #             #     logger.info("move %s -> %s", srcfile, os.path.join(finishdir, upl["file_name"]))
    #         except pymongo.errors.DuplicateKeyError:
    #             logger.info(("%s Already Exist!", upl['file_name']))
    #             srcfile = os.path.join(path, upl["file_name"])
    #             if not os.path.isfile(srcfile):
    #                 logger.info("%s not exist!" % (srcfile))
    #             # else:
    #             #     if not os.path.exists(finishdir):
    #             #         os.makedirs(finishdir)
    #             #     shutil.move(srcfile, os.path.join(finishdir, upl["file_name"]))
    #             #     logger.info("move %s -> %s", srcfile, os.path.join(finishdir, upl["file_name"]))
    #         except pymongo.errors.DocumentTooLarge:
    #             # print(upl_withoutdot)
    #             if '_id' in upl_withoutdot.keys():
    #                 upl_withoutdot.pop('_id')
    #             big_item.append(upl_withoutdot)
    #             # srcfile = os.path.join(path, upl["file_name"])
    #             # if not os.path.isfile(srcfile):
    #             #     logger.info("%s not exist!" % (srcfile))
    #             # else:
    #             #     if not os.path.exists(finishdir):
    #             #         os.makedirs(finishdir)
    #             #     shutil.move(srcfile, os.path.join(finishdir, upl["file_name"]))
    #             #     logger.info("move %s -> %s", srcfile, os.path.join(finishdir, upl["file_name"]))
    #         except TypeError:
    #             print("TypeError! response can not be jsonialized")
    #     else:
    #         logger.error('Statuscode %s Performing Static Analysis on %s', response.status_code, upl['file_name'])
    #         # srcfile = os.path.join(path, upl["file_name"])
    #         # if not os.path.isfile(srcfile):
    #         #     logger.info("%s not exist!" % (srcfile))
    #         # else:
    #         #     if not os.path.exists(finishdir):
    #         #         os.makedirs(finishdir)
    #         #     shutil.move(srcfile, os.path.join(finishdir, upl["file_name"]))
    #         #     logger.info("move %s -> %s", srcfile, os.path.join(finishdir, upl["file_name"]))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-d', '--directory',
                        help='Path to the directory that contains '
                             'mobile app binary/zipped source code')

    parser.add_argument('-D', '--finishdir',
                        help='Path to store the analysed apps')

    parser.add_argument(
        '-s', '--ipport', help='IP address and Port number '
                               'of a running MobSF Server. '
                               '(ex: 127.0.0.1:8000)')
    parser.add_argument(
        '-k', '--apikey', help='MobSF REST API Key')
    parser.add_argument(
        '-r', '--rescan', help='Run a fresh scan. '
                               'Value can be 1 or 0 (Default: 0)')
    parser.add_argument(
        '-R', '--Recursive', help='Run a recursively scan. '
                                  'Value can be 1 or 0 (Default: 0)')
    parser.add_argument(
        '-c', '--collection', help='Collecition name to store the results')
    args = parser.parse_args()
    client = pymongo.MongoClient('mongodb://localhost:27017/')
    db = client['Notileaks']
    if args.directory and args.ipport and args.apikey:
        server = args.ipport
        directory = args.directory
        server_url = 'http://' + server
        apikey = args.apikey
        finishdir = args.finishdir
        rescan = args.rescan
        if not is_server_up(server_url):
            print('MobSF REST API Server is not running at ' + server_url)
            print('Exiting!')
            exit(0)
        big_item = []
        # MobSF is running, start scan
        if args.Recursive:
            items = os.listdir(directory)
            for item in items:
                abs_dir = os.path.join(directory, item)
                if os.path.isdir(abs_dir):
                    collection = db[item]
                    collection.create_index([("hash", 1)], unique=True)
                    start_scan(os.path.join(directory, item), server_url, apikey, rescan)
        else:
            if args.collection:
                collection = db[args.collection]
            else:
                collection = db['MobSF']
            collection.create_index([("hash", 1)], unique=True)
            start_scan(directory, server_url, apikey, rescan)

        with open('new_result.json', 'w+',encoding='utf-8') as f:
            f.write(json.dumps(big_item, ensure_ascii=False, indent=2)+"\n")
    else:
        parser.print_help()
