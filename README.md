# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| surname1    | string | null: false |
| first_name1 | string | null: false |
| surname2    | string | null: false |
| first_name2 | string | null: false |
| year  | string | null: false |
| month | string | null: false |
| day   | string | null: false |

## items テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| description | text | null: false |
| category | string | null: false |
| status   | string | null: false |
| fee     | string | null: false |
| area    | string | null: false |
| days    | string | null: false |
| price   | string | null: false |
| user_id | references | foreign_key: true |


## orders テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| card_num | string | null: false |
| month    | string | null: false |
| year     | string | null: false |
| sec_code | string | null: false |
| zip_code | string | null: false |
| prefecture | string | null: false |
| city       | string | null: false |
| house_num  | string | null: false |
| building   | string |
| phone      | string | null: false |
| user_id    | references | foreign_key: true |
| item_id    | references | foreign_key: true |