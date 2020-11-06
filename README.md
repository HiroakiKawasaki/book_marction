# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| nickname         | string  | null: false |
| email            | string  | null: false |
| password         | string  | null: false |
| family_name      | string  | null: false |
| first_name       | string  | null: false |
| family_name_kana | string  | null: false |
| first_name_kana  | string  | null: false |
| birthday         | date    | null: false |
| sex_id           | integer | null: false |

### Association

- has_many :books
- has_many :comments

## books テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| title          | string     | null: false                    |
| author         | string     | null: false                    |
| genre_id       | integer    | null: false                    |
| explanation    | text       | null: false                    |
| user           | references | null: false, foreign_key: true |
| reason         | string     | null: false                    |
| time           | string     |                                |
| place          | string     |                                |
| partner        | string     |                                |
| thing          | string     | null: false                    |
| todo           | string     | null: false                    |
| achievement_id | integer    |                                |

### Association

- belongs_to :users
- has_many :comments

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| message   | text       | null: false                    |
| user      | references | null: false, foreign_key :true |
| book      | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :books