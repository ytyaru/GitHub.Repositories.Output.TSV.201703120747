# このソフトウェアについて

GitHubリポジトリDBをTSVファイルに出力するスクリプト。

# 開発環境

* Linux Mint 17.3 MATE 32bit
* [Python 3.4.3](https://www.python.org/downloads/release/python-343/)
* [SQLite](https://www.sqlite.org/) 3.8.2

## WebService

* [GitHub](https://github.com/)
    * [アカウント](https://github.com/join?source=header-home)
    * [AccessToken](https://github.com/settings/tokens)
    * [Two-Factor認証](https://github.com/settings/two_factor_authentication/intro)
    * [API v3](https://developer.github.com/v3/)

# 準備

## 1. DB作成

* [GitHub.Accounts.Database](https://github.com/ytyaru/GitHub.Accounts.Database.20170107081237765)
    * [GiHubApi.Authorizations.Create](https://github.com/ytyaru/GiHubApi.Authorizations.Create.20170113141429500)
* [GitHub.Repositories.Database.Create](https://github.com/ytyaru/GitHub.Repositories.Database.Create.20170114123411296)

SQLite3でDBファイルを作成する。

## 2. DB挿入

* [GiHub.Repo.Insert.20170114155109609](https://github.com/ytyaru/GiHub.Repo.Insert.20170114155109609)

指定アカウントから全リポジトリ情報をDBに挿入する。

## 3. パスを設定する

`out.sh`の以下のコードを編集し、任意のGitHubユーザ名とDBパスを指定する。

```sh
GITHUB_USER=ytyaru
PATH_DB_REPO=/media/${OS_USER}/some_device_name/db/GitHub.Repositories.${GITHUB_USER}.sqlite3
```

# 実行

1. ターミナルを起動する
1. 以下のコマンドを実行する（今回のスクリプトを実行する）

```sh
bash out.sh
```

# 結果

`Repositories.tsv`ファイルが出力される。

内容は`out.sql`のselect文のとおり。

# ライセンス #

このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)

