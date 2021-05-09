#!/bin/bash

#=================================================
# GENERIC START
#=================================================
# IMPORT GENERIC HELPERS
#=================================================

source /usr/share/yunohost/helpers
source _common.sh

app=__APP__
final_path=$(ynh_app_setting_get --app=$app --key=final_path)


ynh_use_nodejs
cd $final_path/assets/frontend/bundle/
../../../indexer > .index-xhr
cd $final_path/assets/cores
../../indexer > .index-xhr

