#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
-------------------------------------------------
@File    : main.py
@Time    : 29/6/23 10:25 am
@Author  : Han0nly
@Github  : https://github.com/Han0nly
@Email   : zhangxh@stu.xidian.edu.cn
-------------------------------------------------
"""
import argparse
import platform
from utilities import *

if __name__ == '__main__':
    sys_type = platform.system()
    # dex_list = []
    # Covert aar and jar file to dex
    lib2dex(False,sys_type)
    # init mongodb database
    col = mongodb_init(index_exist=False)
    # start analysis
    run_analysis(apk_dir, dex_dir, col,sys_type)
