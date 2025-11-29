# DiscordCLI

Discord を CLI で操作するクライアント [**discordo**](https://github.com/ayn2op/discordo) を動かすための Docker コンテナです。

## 使用手順

1. ⚠️**自己責任**⚠️ 
   [**Discord の自分のアカウントの Token を取得しよう！** - shunshun94.github.io](https://shunshun94.github.io/shared/sample/discordAccountToken) などを参考に、Discord の Token を取得します
2. プロジェクトのルートディレクトリに、以下の内容の `.env` ファイルを用意します
   ```
   DISCORD_TOKEN=<Your Discord Token is here>
   ```
3. CLI で以下を実行します
   ```
   docker compose run --rm dev
   ```
