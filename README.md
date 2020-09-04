# README

# 概要
## BookReview
書評投稿Webアプリケーション
手軽に書評を残すことができます。写真のイメージ画像と合わせて投稿できるので、パッと見で何の本の投稿か判断できます。また、コメント機能も搭載しています。

https://portfolio79.herokuapp.com

【テスト用アカウント】
- メールアドレス：sample@sample.com
- パスワード：aaaa1111

# 仕様
CRUDに基づいた記事投稿型Appです。

- 記事一覧・詳細表示
- 記事編集・削除
- ユーザー登録・編集
- コメント

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|

### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||	
|text|text||	
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :tweet
- belongs_to :user