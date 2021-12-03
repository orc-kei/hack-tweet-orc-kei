# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | -----------               |
| name               | string | null: false               |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :comments
- has_many :hacks

## hacks テーブル

| Column  | Type       | Options                       |
| ------- | ---------- | ------------------------------|
| title   | string     | null: false,                  |
| point   | text       | null: false,                  |
| reason  | text       | null: false,                  |
| example | text       | null: false,                  |

### Association

- has_many :comments
- has_many :tags, through: :hack_tags
- belongs_to :user

## comments テーブル

| Column  | Type   | Options     |
| ------- | ------ | ----------- |
| message | string | null: false |

### Association

- belongs_to :user
- belongs_to :hack


## hack_tags テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| tag    | references | null: false, foreign_key: true |
| hack   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

