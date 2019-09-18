#!/bin/bash

export TT_DWORK=${WORK_DIR}

alias dwork='cd ${WORK_DIR}'
echo ""
echo "command list"
echo "dwork: cd workspace dir"
echo ""

#fix wget http://commondatastorage.googleapis.com/git-repo-downloads/repo repo-temp fail
#unable to access 'https://gerrit.googlesource.com/git-repo/': Problem with the SSL CA cert
git config --global --add http.sslVerify false

dwork
