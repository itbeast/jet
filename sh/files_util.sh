#!/bin/sh

# $1 - current directory
# $2 - jet directory
copy_jet_file()
{
  cp -R $1/lib $2/lib;
  cp -R $1/sh $2/sh;
  cp $1/update.sh $2/update.sh;
  cp $1/jet.cr $2/jet.cr;
}

# $1 - jet directory
remove_jet_file()
{
  rm -rf $1/lib;
  rm $1/jet.cr;
}
