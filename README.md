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
