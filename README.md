# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | encrypted_password | null: false |
| email    | encrypted_password | null: false |
| password | encrypted_password | null: false |
| surname1    | string | null: false |
| first_name1 | string | null: false |
| surname2    | string | null: false |
| first_name2 | string | null: false |
| dob         | date   | null: false |


## items テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name_id | integer | null: false |
| description_id | integer | null: false |
| category_id    | integer | null: false |
| status_id  | integer | null: false |
| fee_id     | integer | null: false |
| area_id    | integer | null: false |
| days_id    | integer | null: false |
| price_id   | integer | null: false |
| user | references | foreign_key: true |


## shoppers テーブル

| user       | references | foreign_key: true |
| item       | references | foreign_key: true |


## addresses テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| zip_code_id | integer | null: false |
| prefecture_id | integer | null: false |
| city_id       | integer | null: false |
| house_num_id  | integer | null: false |
| building_id   | integer |
| phone_id      | integer | null: false |
| shopper | references | foreign_key: true |