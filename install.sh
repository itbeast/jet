#!/bin/bash

source 'sh/logo.sh';
source 'sh/version.sh';
source 'sh/script.sh';
source 'sh/builder.sh';
source 'sh/files_util.sh';

# Save current directory path
CURRENT_DIR=$PWD;
# Set JET directory
JET_PATH=$HOME/.jet/bin;

print_jet_installer_version;

echo -e "Create \e[32m JET ⬡ \e[0m directory: \e[33m\e[4m$JET_PATH\e[0m";
check_cmd_start;
mkdir -p $JET_PATH;
check_cmd_end;

echo -e "Start copy \e[32m JET ⬡ \e[0m files ...";
# Copy all files
check_cmd_start;
copy_jet_file $CURRENT_DIR $JET_PATH;
check_cmd_end;

echo -e "Start build \e[32m JET ⬡ \e[0m application";
check_cmd_start;
build_jet_app $JET_PATH/jet.cr;
check_cmd_end;


echo -e "Remove files ..."
check_cmd_start;
remove_jet_file $JET_PATH
check_cmd_end;


echo "Initialize & Add alias";
# Add aliases
cd $JET_PATH;
check_cmd_start;
chmod +x $JET_PATH/jet;
check_cmd_end;

if grep -q 'alias jet=' $HOME/.bashrc;
then
  echo "alias already exist";
else
  check_cmd_start;
  JET_ALIAS="alias jet='$JET_PATH/jet'";
  echo $JET_ALIAS >> $HOME/.bashrc;
  JET_ALIAS="alias jet-update='bash $JET_PATH/update.sh'";
  echo $JET_ALIAS >> $HOME/.bashrc;
  check_cmd_end;
fi

cd $CURRENT_DIR;
print_jet_logo;
echo -e "\n\n";
exec bash;

exit 0
