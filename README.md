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

| アプリケーション名             | hack tweet |
| アプリケーションの概要          | hack術をシェアし、ユーザー同士でコミュニケーションを取ることで、日々の生産を向上することができる。 |
| URL                         | 
| テスト用アカウント             |
| 利用方法                     |  
| アプリケーションを作成した背景   | 過去の自分をペルソナとし、「学習の効果を高めたい」という課題を抱えていた。 そのためには人に説明するように「アウトプット」をする。「共有」して「コミュニケーション」をとりモチベーションも保てる仕組みを作りたい。 「少ない時間で最大の効果を出す」hackを投稿して共有できる SNSアプリケーションを開発することにしました。|
｜洗い出した要件                 | [要件定義](https://docs.google.com/spreadsheets/d/1HalF8KqCY-X67mWO_0vCwIatUw35iBn426QkQjs8by0/edit#gid=982722306) |
| 説明                         |
| 実装予定の機能                 |