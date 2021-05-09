#!/bin/bash
#This script is run by the cron job in /etc/cron.d/retroarch
#It will index all cores in the opt/yunohost/retroarch/assets/cores folder so that they are available in 
# retroarch itself.

#=================================================
# IMPORT GENERIC HELPERS
#=================================================

source /usr/share/yunohost/helpers
source _common.sh

#=================================================
# GET APP SETTINGS
#=================================================

app=__APP__
final_path=$(ynh_app_setting_get --app=$app --key=final_path)

#=================================================
# Update the index
#=================================================

ynh_use_nodejs
cd $final_path/assets/frontend/bundle/
../../../indexer > .index-xhr
cd $final_path/assets/cores
../../indexer > .index-xhr

