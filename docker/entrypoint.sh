#!/bin/bash
set -e

# build prefix
CHATGPT_ON_WECHAT_PREFIX=/app
# execution command line
CHATGPT_ON_WECHAT_EXEC="python app.py"
# path to config.json
CHATGPT_ON_WECHAT_CONFIG_PATH=${CHATGPT_ON_WECHAT_CONFIG_PATH:-""}

# CHATGPT_ON_WECHAT_CONFIG_PATH is empty, use '/app/config.json'
if [ "$CHATGPT_ON_WECHAT_CONFIG_PATH" == "" ] ; then
    CHATGPT_ON_WECHAT_CONFIG_PATH=$CHATGPT_ON_WECHAT_PREFIX/config.json
fi

# go to prefix dir
cd $CHATGPT_ON_WECHAT_PREFIX
# excute
$CHATGPT_ON_WECHAT_EXEC


