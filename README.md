# Fastladder の fork

aarch64用のコンテナをビルドするだけのつもりがいつの間にか…
オリジナル: https://github.com/fastladder/fastladder

* とりあえずGemをアップデート
* docker-composeとDockerfileを追加
* うまく動かなくなったので少し修正
* 動作が怪しい
* PostgreSQLのみサポート（MySQLだと本文が長すぎる場合エラーで落ちる場合がある）

## how to develop

asdfをお使いの場合、自動的にrubyとnodejsのバージョンが切り替わるはずです。
切り替わらない場合は、 `.tool-versions` を参照してうまくやってください。
DB起動後の処理をまとめた `run_debug.sh` も用意してあります。

### DBの起動（データは永続化されません。DBを停止するとすべて削除されます）

```
docker compose up db
```

上記コマンドでうまく起動しない（permission denied）が出る場合は
`run_pgsql.sh` を使用してください。（dockerコマンドを直接叩くだけです）

### db:migrate等

```
RAILS_ENV=production bundle exec rake db:migrate
RAILS_ENV=production bundle exec rake assets:precompile
```

### Webとクローラーの起動

```
foreman start
```

foremanがインストールされていない場合は、 `gem install foreman` でインストールしてください。
なお、foremanは開発時にしか使用しません。foremanを使用したくない場合は、`Procfile`に記述されているコマンドを
それぞれ実行することで同じ効果が得られます。

### Web UI へのアクセス

ブラウザから `http://localhost:3000` にアクセスしてください。
初期状態ではユーザーが存在しないのでユーザー登録から始めてください。

### dockerコンテナのビルド

ヒアドキュメントを使っているのでBuildkitを使う必要があります。

```
docker buildx build .
```
