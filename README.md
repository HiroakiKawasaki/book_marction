# Book Marction

このアプリケーションは読んだ本の学びと、学びを実行するプランをまとめることができるメモアプリです。

# Description

私たちは読書をすることで様々なことを学習することができます。
例えば、本の内容から専門的な知識を身に付けることができたり、著者の考え方や表現方法を感じ取ることができます。
読書は私たちの生活をより豊かにするヒントを与えてくれます。
しかし、知識は実際に行動に移すことで真価を発揮すると思います。そこで、「本を読んでインプットしたこと」と「実際にアウトプットすること」を見やすく整理するために "Book Marction" を作成しました。
名前の由来は "Bookmark" と "action" を組み合わせた造語です。

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