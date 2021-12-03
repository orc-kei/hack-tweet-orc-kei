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


| application name       | hack tweet                                                                                                                     |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| outline                |                                                                                                                                |
| URL                    |                                                                                                                                |
| test account           |                                                                                                                                |
| how to                 |                                                                                                                                |
| background             | 学習の効果を高めたいという課題をアウトプットを共有という形で「少ない時間で最大の効果を出せる」ようにhackを投稿し共有できるsns applicationを開発     |
| Requirements           | (https://docs.google.com/spreadsheets/d/1HalF8KqCY-X67mWO_0vCwIatUw35iBn426QkQjs8by0/edit#gid=982722306)                       |
| description            |                                                                                                                                |
| next expectation       |                                                                                                                                |
| ER                     | er.dioに記載                                                                                                                    |
