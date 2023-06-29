import json
import os
import zipfile
import subprocess
import shutil
import platform
import pymongo
from pymongo import MongoClient
from settings import *

def execute_cmd(cmd):
    """ status: 0: success, 1: error
       ret: success: stdout, error: stderr
    """
    status, ret = subprocess.getstatusoutput(cmd)
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


def jar2dex(jardir, sys_type):
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


def runLibPecker(apk, dex, sys_type):
    libPecker_command = 'java -jar ' + libpecker_dir + ' ' + apk + ' ' + dex
    if sys_type == "Windows":
        libPecker_command.replace('/', '\\')
    (exec_stat, exec_output) = execute_cmd(libPecker_command)
    if exec_stat == 0:
        print('[SUCCESS] %s' % libPecker_command)
        if len(exec_output) <=50:
            similarity = float(exec_output.split('\n')[0].split(":")[1].strip())
            print(similarity)
            return similarity
    else:
        print('[ERROR] %s' % libPecker_command)
        return -1


def runFlowDroid(apk: str, sys_type: str) -> None:
        if sys_type == "Windows":
            result_xml = flow_result_dir + apk.split('\\')[-1] + ".xml"
        else:
            result_xml = flow_result_dir + apk.split('/')[-1] + ".xml"
        if os.path.isfile(result_xml):
            print("[Already Exist]: %s" % result_xml)
        else:
            flowDroid_command = 'java -jar ' + flowdroid_dir + ' -a ' + apk + \
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
    collection = db['Test']
    if index_exist:
        result = collection.create_index('app_mame', unique=True)
    return collection

def lib2dex(covert_bool: bool, sys_type: str):
    if covert_bool:
        aar2jar(aar_dir)
        jar2dex(jar_dir,sys_type)


def run_analysis(apkdir,dexdir,db_column,sys):
    has_noti_libs = False
    # iterate all the apks
    for apk in findAllFile(apkdir, 'apk'):
        result = {}
        result['app_mame'] = apk.split('/')[-1]
        print(result['app_mame'])
        if db_column.find_one(result):
            continue
        else:
            result['LibPecker'] = {}
            # compute the similarity of this apk with every library.
            for dex in findAllFile(dexdir, 'dex'):
                sim = runLibPecker(apk,dex,sys)
                if sim != -1:
                    lib_name = dex.split('/')[-1][:-4].replace(".", "_")
                    result['LibPecker'][lib_name] = sim
                    if sim > simi_threshold:
                        has_noti_libs = True
            if has_noti_libs:
                runFlowDroid(apk,sys)
            db_column.insert_one(result)
