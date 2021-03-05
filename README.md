# Develop API

Restful Web API, graphql Web APIの学習レポジトリです。


### Set up

```
gem graphiql-rails
```

ブラウザでクエリを実行して、GraphQLの動作確認ができるツール

APIモードでプロジェクトを立てた場合以下2点の設定が必要

config/application.rb
```
require "sprockets/railtie"
```

app/assets/config/manifest.js

```
//= link graphiql/rails/application.css
//= link graphiql/rails/application.js

```


## 便利gem

```
gem 'graphql-batch'
```

1:Nの関連テーブルのデータも取ってくる事ができるが、DBへの問い合わせが大量に発生してしまう場合があり。
問い合わせをまとめてバッチ処理するgem


```
gem 'graphdoc-ruby'
```

~~スキーマファイルから良い感じのドキュメントを自動で生成するGem~~

最終更新が3年前のため非推奨

