# Sample Hotwire

## Railsオプション

```bash
rails new . --force --database=mysql --css=bootstrap --skip-jbuilder -T -M --skip-active-storage --skip-action-text
```

上記オプションで実行し、package.jsonに必要パッケージが書き込まれない異常が発生した。
解決する場合、以下のとおりパッケージ追加が必要となる。

```bash
npm install @popperjs/core
npm install @hotwired/turbo-rails
npm install @hotwired/stimulus
npm install bootstrap bootstrap-icons
npm install sass esbuild
```

別プロジェクトとしてRails新規作成を行い再現するか検証を行ったが、再現はしなかったため、発生原因は不明である。

## 検索画面

Hotwireの動作確認のため検索画面を作成した。

http://localhost:3000/players
Hotwireの機能の1⃣つであるTurbo-flameを検索結果一覧に使用している。
検索、ページャ移動で動作確認が可能である。

```bash
# Database
docker compose up -d --build

# Railsセットアップ
rails db:create
rails db:migrate
rails db:seed

# Rails起動
bin/dev
```
