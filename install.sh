#!/bin/bash

jet_path=$HOME/.crystal/bin/

mkdir -p $jet_path


cd $jet_path



APPEND="alias test='ls -la'"


echo $APPEND >>$HOME/.bashrc


cat $HOME/.bashrc


