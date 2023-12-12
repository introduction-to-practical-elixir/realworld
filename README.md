# RealWorld

これは書籍「Elixir実践入門」第11章：実践的なWebアプリケーションの開発のサンプルコードです。

## ローカルマシンで動かす

ローカルマシン上で直接、サンプルコードを動かす場合の手順です。

macOS Sonoma(14.1.2)で動作することを確認しています。

### 必要なもの

事前に必要なものは次の2点です。

- Elixir 1.15 or later
- Erlang 26.0 or later
- PostgreSQL 16 or later

詳しくは、書籍「Elixir実践入門」第11章：実践的なWebアプリケーションの開発をご参照ください。


### 環境構築

環境構築は次の通りです。

```
$ git clone https://github.com/introduction-to-practical-elixir/realworld.git
$ cd realworld
$ mix setup
```

### Run

実行は、次のコマンドにより行います。

```
$ mix phx.server
```

http://localhost:4000/articles
にアクセスをしてください。

### テスト

テストは、次のコマンドにより実施できます。

```
$ mix test
```

---

## [Docker](https://www.docker.com/)上で動かす

ローカルマシンに、インストールした[Docker](https://www.docker.com/)上で「すべて」を動かす手順です。

ここで言う「すべて」とは、Elixir、Phoenix、PostgreSQLを指します。

以下の環境で動作することを確認しています。

- macOS Sonoma(14.1.2)
  - Docker Desktop 4.25.2

### 必要なもの

事前に必要なものは、[Docker](https://www.docker.com/)のみです。

### 環境構築

環境構築は次の通りです。

```
$ git clone https://github.com/introduction-to-practical-elixir/realworld.git
$ cd realworld
$ docker-compose build --no-cache
```

### Run

実行は、次のコマンドにより行います。

```
$ docker-compose up -d
```

http://localhost:4000/articles
にアクセスをしてください。

### テスト

テストは、次のコマンドにより実施できます。

```
$ docker-compose run --rm web mix test
```

### Stop

次のコマンドで停止できます。

```
$ docker-compose stop
```

---

## 本番運用したい

[deployment guides](https://hexdocs.pm/phoenix/deployment.html)をご参照ください。

## もっと学びたい

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## [elixirjp.slack.com](https://join.slack.com/t/elixirjp/shared_invite/zt-ae8m5bad-WW69GH1w4iuafm1tKNgd~w)

[elixirjp.slack.com](https://join.slack.com/t/elixirjp/shared_invite/zt-ae8m5bad-WW69GH1w4iuafm1tKNgd~w)に、執筆陣はおります。

ぜひ飛び込んできてください。

あなたの参加を熱烈歓迎いたします:tada:
