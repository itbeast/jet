#!/bin/sh

# $1 - path to file jet.cr
build_jet_app() {
  CURRENT_DIR=$PWD;
  cd $JET_PATH;
  # Build crystal application
  crystal build $1
  cd $CURRENT_DIR
}
