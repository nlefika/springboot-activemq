#!/usr/bin/env bash
set -x
if [ ! -d $OPENSHIFT_DATA_DIR/gradle-4.4.1 ]
then
    cd $OPENSHIFT_DATA_DIR
    mkdir gradle
    wget https://services.gradle.org/distributions/gradle-4.4.1-bin.zip
    unzip gradle-4.4.1-bin.zip
    rm -f gradle-4.4.1-bin.zip
fi