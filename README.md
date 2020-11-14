# テーブル設計

## users テーブル

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| email            | string | null: false |
| password         | string | null: false |
| nickname         | string | null: false |

## Association

- has_many :tweets
- has_many :comments
- has_many :likes
- has_many :liked_tweets, through: :likes


## tweets テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| information       | text       | null: false                    |
| user              | references | null: false, foreign_key: true |


## Association
- belong_to :user
- has_many :comments
- has_many :likes
- has_many :liked_users, through: :likes


## comments テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| tweet          | references | null: false, foreign_key: true |

## Association

- belong_to :user
- belong_to :tweet


## Like テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| room           | references | null: false, foreign_key: true |
### Association

- belong_to :user
- belong_to :tweet
