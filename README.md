# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :category_user
- has_many :category, through: category_users
- has_many :video

## category テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :category_user
- has_many :users, through: category_users
- has_many :video

## category_users テーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| user   | references | null: false |
| room   | references | null: false |

### Association

- belongs_to :category
- belongs_to :user

## video テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| name        | string     | null: false |
| description | text       | null: false |
| comment     | text       | null: false |
| user        | references | null: false |
| room        | references | null: false |

### Association

- belongs_to :category
- belongs_to :user
