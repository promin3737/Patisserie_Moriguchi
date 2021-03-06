# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
    email: "sanada.shunsuke.infratop@gmail.com",
    password: "ngc2021"
)

EndUser.create!(
    last_name: "関学",
    last_name_kana: "カンガク",
    first_name: "太郎",
    first_name_kana: "タロウ",
    is_status: true,
    address: "兵庫県三田市学園2丁目1番地",
    postal_code: "669-1337",
    phone_number: "079-565-7600",
    email: "kgc_taro@gmail.com",
    password: "kgc2021"
)

Genre.create!(
    name: "test_genre"
)

Item.create!(
    genre_id: 1,
    name: "test_item",
    introduction: "test_introduction",
    image: File.open('./app/assets/images/unnamed.jpg'),
    price: 1000,
    is_status: true
)

Address.create!(
    end_user_id: 1,
    name: "上ヶ原次郎",
    address: "兵庫県西宮市上ケ原一番町1-155",
    postal_code: "662-8501"
)




