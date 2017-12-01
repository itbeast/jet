#!/bin/bash

source 'sh/logo.sh';
source 'sh/version.sh';
source 'sh/script.sh';
source 'sh/builder.sh';
source 'sh/files_util.sh';

local_jet_update()
{
  # Save current directory path
  CURRENT_DIR=$PWD;
  JET_PATH=$HOME/.jet/bin;
  copy_jet_file $CURRENT_DIR $JET_PATH;
  build_jet_app $JET_PATH/jet.cr;
  remove_jet_file $JET_PATH;
}

local_jet_update;

# github_jet_update()
# {
#   echo 'Github'
# }
#
# select yn in "Local" "Github"; do
#   case $yn in
#     Local )  local_jet_update; break;;
#     Github ) github_jet_update; break;;
#   esac
# done

exit 0
