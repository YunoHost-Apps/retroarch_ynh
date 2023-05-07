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
install_dir=$(ynh_app_setting_get --app=$app --key=install_dir)

#=================================================
# Update the index
#=================================================

ynh_use_nodejs
cd $install_dir/assets/frontend/bundle/
../../../indexer > .index-xhr
cd $install_dir/assets/cores
../../indexer > .index-xhr

