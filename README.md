# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_canat    | string | null: false               |
| first_name_canat   | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :items
- has_many :records

## items テーブル

| Column                    | Type       | Options                        |
| ------------------------- | ---------- | ------------------------------ |
| title                     | string     | null: false                    |
| text                      | text       | null: false                    |
| category_id               | integer    | null: false                    |
| detail_id                 | integer    | null: false                    |
| delivery_price_id         | integer    | null: false                    |
| area_id                   | integer    | null: false                    |
| day_id                    | integer    | null: false                    |
| price                     | integer    | null: false                    |
| user                      | references | null: false, foreign_key: true |

### Association

- has_one :record
- belongs_to :user

##  records テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- has_one :address
- belongs_to :user

##  addresses テーブル

| Column                   | Type       | Options                        |
| ------------------------ | ---------- | ------------------------------ |
| postal_code              | string     | null: false                    |
| area_id                  | integer    | null: false                    |
| municipality             | string     | null: false                    |
| house_number             | string     | null: false                    |
| building_name            | string     |                                |
| telephone_number         | string     | null: false                    |
| record                   | references | null: false, foreign_key: true |

### Association

- belongs_to :record

アプリケーション名：DEAR
アプリケーション概要：保護者のためのフリマアプリです。
URL：https://family2-36197.herokuapp.com/
ID：admin PASS：2222
目指した課題解決：保護者の方がお子様の使わなくなった物を売ったり、気になってる商品があればお手頃価格で購入できることを目標としたアプリを作成致しました。
昨今、色々なものが売買されているフリマアプリは沢山ありますが、お子様の物を限定して売買できるフリアマアプリはあまり無いなと思いました。育児には出費が多いので少しでもこのアプリを通して養育されている保護者の方の負担が減れば嬉しなと思いました。
洗い出した要件1：カテゴリーの情報＝＝子どもの物等をやり取りするため、服のサイズなどカテゴリー分けしやすいようにしました。
保護者のためのフリマアプリがコンセプトなので、
使わなくなったお子様のものをお手頃に売買できるようにしたいために
カテゴリーは子ども向けにベビー服（女の子用）~95cm,ベビー服（男の子用）~95cm, 
キッズ服（女の子用）100cm~,キッズ服（男の子用）100cm~,授乳/食事,ベビー家具/室内用品等子ども向けのカテゴリーに絞りました。
商品出品の際にどのカテゴリーで出品するか選択します。

洗い出した要件2：画像複数枚投稿==画像を複数枚投稿して使用感を購入検討している人たちにアピールでききます。
使用感は気になるポイントの一つなのでそこの画像UPしていくことで
購入者の購入意識を上げさせることにもつながります。
出品者：商品出品の際に画像が複数枚選択できます。
購入者：商品詳細ページで画像を確認できます。
 
https://gyazo.com/e926fcb938a212539e49ef6ca68a560d
