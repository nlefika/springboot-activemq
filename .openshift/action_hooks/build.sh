#!/bin/bash
echo 'Running build.....................'
set -x
cd $OPENSHIFT_REPO_DIR
export GRADLE_USER_HOME=$OPENSHIFT_DATA_DIR/gradle
export GRADLE_HOME=$OPENSHIFT_DATA_DIR/gradle-4.4.1
export PATH=$GRADLE_HOME/bin:$PATH
gradle clean build test