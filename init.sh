#!/bin/bash

# .env を環境変数に読み込む
set -a
. .env
set +a

# discordo を起動する
discordo --token $DISCORD_TOKEN
