# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Heroku doesn't seed in order so set seeds exqual to variables and then access ids in joins table.

# users = User.create([
#     {fname: 'Danny', lname: 'Huang', email: 'drh8@gmail.com', password: 'cannotcode', address: '1', phone_number: 1234567890,},
#     {fname: 'Darrick', lname: 'Yong', email: 'dy29@gmail.com', password: 'codingwizard', address: '2', phone_number: 1234567891,},
#     {fname: 'TJ', lname: 'McCabe', email: 'tjm30@gmail.com', password: 'codinggenius', address: '3', phone_number: 1234567892},
#     {fname: 'Glen', lname: 'Park', email: 'gp12@gmail.com', password: 'codinggod', address: '4', phone_number: 1234567893},
#     {fname: 'Jay', lname: 'Chen', email: 'jc27@gmail.com', password: 'livingalgo', address: '5', phone_number: 1234567894}
# ])
require 'open-uri'

# Users
User.destroy_all
user1 = User.create({fname: 'Danny', lname: 'Huang', email: 'drh8@gmail.com', password: 'cannotcode', address: '10547 Whispering Hills Lane, San Diego CA 92130', phone_number: 8583140788})
user2 = User.create({fname: 'Demo', lname: 'User', email: 'demo@gmail.com', password: 'longpassforeffect', address: '39 Fair Oaks Street, San Francisco CA 94107', phone_number: 8583140788})



# Stores and Store Index Photos
Store.destroy_all
store1 = Store.create!(name:'Wok & Go',address: '2700 24th St, San Francisco, CA 94110', hours: ['10:00AM - 11:00PM'], description: 'Best Salt & Pepper Wings in the city', status: 1, coordinate: '(37.7531, -122.4066)', rating: 4.7, rating_count: 315, price_rating: '$')
store1_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WokGo.jpg')
store1_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WokGo2.jpg') 
store1.photos.attach(io: store1_photo1, filename: 'WokGo.jpg')
store1.photos.attach(io: store1_photo2, filename: 'WokGo2.jpg')

store2 = Store.create!(name:'Marugame Udon',address: '3251 20th Ave 184, San Francisco, CA 94132', hours: ['11:00AM - 10:00PM'], description: 'Hip spot where an array of udon dishes are prepared with noodles hand-pulled in an open kitchen.', status: 1, coordinate: '(37.728180, -122.477020)', rating: 4.6, rating_count: 2184, price_rating: '$' )
store2_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Udon.jpg')
store2_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Udon2.jpg')
store2.photos.attach(io: store2_photo1, filename: 'Udon.jpg')
store2.photos.attach(io: store2_photo2, filename: 'Udon2.jpg')

store3 = Store.create!(name:'Benu',address: '22 Hawthorne St, San Francisco, CA 94105', hours: ['5:30PM - 8:30PM'], description: 'Minimalist SoMa spot featuring innovative, ultrapricey American cuisine and renowned tasting menu.', status: 1, coordinate: '(37.785461, -122.399048)', rating: 4.9, rating_count: 4281, price_rating: '$$$$')
store3_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu.jpg')
store3_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu2.jpg')
store3.photos.attach(io: store3_photo1, filename: 'Benu.jpg')
store3.photos.attach(io: store3_photo2, filename: 'Benu2.jpg')

store4 = Store.create!(name:'Little Szechuan',address: '501 Broadway St, San Francisco, CA 94133', hours: ['11:00AM - 3:00PM'], description: 'Spicy Sichuan dishes, mu shu & Chinese stir-fries are served in a vintage A-frame building.', status: 1, coordinate: '(37.797790, -122.405700)', rating: 4.3, rating_count: 523, price_rating: '$$')
store4_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Szechuan.jpg')
store4_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Szechuan2.jpg')
store4.photos.attach(io: store4_photo1, filename: 'Szechuan.jpg')
store4.photos.attach(io: store4_photo2, filename: 'Szechuan2.jpg')

store5 = Store.create!(name:'Thanh Tam II',address: '577 Valencia St, San Francisco, CA 94110', hours: ['11:15AM - 9:30PM'], description: 'No-frills restaurant with menu featuring over 150 Vietnamese & Southeast Asian dishes.', status: 1, coordinate: '(37.763690, -122.421470)', rating: 4.3, rating_count: 1096, price_rating: '$')
store5_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ThanhTam.jpg')
store5_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ThanhTam2.jpg')
store5.photos.attach(io: store5_photo1, filename: 'ThanhTam.jpg')
store5.photos.attach(io: store5_photo2, filename: 'ThanhTam2.jpg')

store6 = Store.create!(name:'McDonalds',address: '302 Potrero Ave, San Francisco, CA 94110', hours: ['5:00AM - 2:00AM'], description: 'Classic, long-running fast-food chain known for its burgers, fries & shakes.', status: 1, coordinate: '(37.748960, -122.404820)', rating: 4.0, rating_count: 4072, price_rating: '$')
store6_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/McDonalds.jpg')
store6_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Mcdonalds2.jpg')
store6.photos.attach(io: store6_photo1, filename: 'McDonalds.jpg')
store6.photos.attach(io: store6_photo2, filename: 'Mcdonalds2.jpg')

store7 = Store.create!(name:'Seapot',address: '1952 S El Camino Real, San Mateo, CA 94403', hours: ['11:00AM - 9:30PM'], description: 'Spacious & stylish eatery featuring Chinese hot pot tables, plus a conveyor belt of food options.', status: 1, coordinate: '(37.548490, -122.310230)', rating: 4.8, rating_count: 1688, price_rating: '$$')
store7_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Seapot.jpg')
store7_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Seapot2.jpg')
store7.photos.attach(io: store7_photo1, filename: 'Seapot.jpg')
store7.photos.attach(io: store7_photo2, filename: 'Seapot2.jpg')

store8 = Store.create!(name:'Hot Sauce & Panko',address: '1468 Hyde St, San Francisco, CA 94109', hours: ['11:30AM - 7:00PM'], description: 'Tiny outpost for Korean-American comfort food, waffle sandwiches & over 300 hot sauce varieties.', status: 1, coordinate: '(37.794320, -122.418010)', rating: 4.3, rating_count: 945, price_rating: '$')
store8_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HotSauce.jpg')
store8_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HotSauce2.jpg')
store8.photos.attach(io: store8_photo1, filename: 'HotSauce.jpg')
store8.photos.attach(io: store8_photo2, filename: 'HotSauce2.jpg')

store9 = Store.create!(name:'Rooster & Rice',address: '4039 18th St, San Francisco, CA 94114', hours: ['11:00AM - 8:00PM'], description: 'Snug counter-service cafe serving dine-in or take-out khao mun gai (Thai chicken & rice).', status: 1, coordinate: '(37.760780, -122.433650)', rating: 4.5, rating_count: 2056, price_rating: '$')
store9_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RoosterRice.jpg')
store9_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RoosterRice2.jpg')
store9.photos.attach(io: store9_photo1, filename: 'RoosterRice.jpg')
store9.photos.attach(io: store9_photo2, filename: 'RoosterRice2.jpg')

store10 = Store.create!(name:'Zen Modern Asian Bistro',address: '13510 Sabre Springs Pkwy, San Diego, CA 92128', hours: ['10:00AM - 9:00PM'], description: 'Casual counter-serve locale offering Asian fusion, wok-fried dishes & sushi amid basic decor.', status: 1, coordinate: '(32.962670, -117.092020)', rating: 4.6, rating_count: 730, price_rating: '$')
store10_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Zen.jpg')
store10_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Zen2.jpg')
store10.photos.attach(io: store10_photo1, filename: 'Zen.jpg')
store10.photos.attach(io: store10_photo2, filename: 'Zen2.jpg')

store11 = Store.create!(name:'RI XV',address: '2250 23rd St, San Francisco, CA 94107', hours: ['11:30AM - 9:00PM'], description: 'Bib Gourmand. Home cooking with farm-to-table ingredients', status: 1, coordinate: '(37.754590, -122.402080)', rating: 5.0, rating_count: 11923, price_rating: '$$$')
store11_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RI1.jpg')
store11_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RI2.jpg')
store11.photos.attach(io: store11_photo1, filename: 'RI1.jpg')
store11.photos.attach(io: store11_photo2, filename: 'RI2.jpg')

# Categories
# Category.destroy_all
# category1 = Category.create!(category_title: 'First Order,$0 Delivery Fee')
# category2 = Category.create!(category_title: 'National Favorites')
# category3 = Category.create!(category_title: 'Order Again & Save 20%')
# category4 = Category.create!(category_title: 'First Order 20% Off')
# category5 = Category.create!(category_title: '$0 Delivery Fee')
# category6 = Category.create!(category_title: 'Most Popular Local Restaurants')
# 1. Wok & Go
# 2. Marugame Udon
# 3. Benu
# 4. Little Szechuan
# 5. Thanh Tam II
# 6. Mcdonalds
# 7. Seapot
# 8. Hot Sauce & Panko
# 9. Rooster & Rice
# 10. Zen
# 11. RI XV

# Filters 
Filter.destroy_all
filter1 = Filter.create!(filter_title: 'Convenience')
filter1_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Convenience.jpg') 
filter1.photo.attach(io: filter1_photo, filename: 'Convenience.jpg')
filter2 = Filter.create!(filter_title: 'Asian')
filter2_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Asian.jpg') 
filter2.photo.attach(io: filter2_photo, filename: 'Asian.jpg')
filter3 = Filter.create!(filter_title: 'Fast Food')
filter3_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Fast+Food.jpg') 
filter3.photo.attach(io: filter3_photo, filename: 'Fast+Food.jpg')
filter4 = Filter.create!(filter_title: 'Burgers')
filter4_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Burgers.jpg') 
filter4.photo.attach(io: filter4_photo, filename: 'Burgers.jpg')
filter5 = Filter.create!(filter_title: 'Healthy')
filter5_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Healthy.jpg') 
filter5.photo.attach(io: filter5_photo, filename: 'Healthy.jpg')
filter6 = Filter.create!(filter_title: 'Chinese')
filter6_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Chinese.jpg') 
filter6.photo.attach(io: filter6_photo, filename: 'Chinese.jpg')
filter7 = Filter.create!(filter_title: 'Barbeque')
filter7_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Barbeque.jpg') 
filter7.photo.attach(io: filter7_photo, filename: 'Barbeque.jpg')
filter8 = Filter.create!(filter_title: 'Breakfast')
filter8_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Breakfast.jpg') 
filter8.photo.attach(io: filter8_photo, filename: 'Breakfast.jpg')
filter9 = Filter.create!(filter_title: 'Thai')
filter9_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Thai.jpg') 
filter9.photo.attach(io: filter9_photo, filename: 'Thai.jpg')
filter10 = Filter.create!(filter_title: 'Sandwiches')
filter10_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Sandwiches.jpg') 
filter10.photo.attach(io: filter10_photo, filename: 'Sandwiches.jpg')
filter11 = Filter.create!(filter_title: 'Chicken')
filter11_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Chicken.jpg') 
filter11.photo.attach(io: filter11_photo, filename: 'Chicken.jpg')
filter12 = Filter.create!(filter_title: 'Halal')
filter12_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Halal.jpg') 
filter12.photo.attach(io: filter12_photo, filename: 'Halal.jpg')
filter13 = Filter.create!(filter_title: 'Korean')
filter13_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Korean.jpg') 
filter13.photo.attach(io: filter13_photo, filename: 'Korean.jpg')
filter14 = Filter.create!(filter_title: 'Poke')
filter14_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Poke.jpg') 
filter14.photo.attach(io: filter14_photo, filename: 'Poke.jpg')
filter15 = Filter.create!(filter_title: 'Mexican')
filter15_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Mexican.jpg') 
filter15.photo.attach(io: filter15_photo, filename: 'Mexican.jpg')
filter16 = Filter.create!(filter_title: 'Vietnamese')
filter16_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Vietnamese.jpg') 
filter16.photo.attach(io: filter16_photo, filename: 'Vietnamese.jpg')
filter17 = Filter.create!(filter_title: 'Greek')
filter17_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Greek.jpg') 
filter17.photo.attach(io: filter17_photo, filename: 'Greek.jpg')
filter18 = Filter.create!(filter_title: 'Japanese')
filter18_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Japanese.jpg') 
filter18.photo.attach(io: filter18_photo, filename: 'Japanese.jpg')
filter19 = Filter.create!(filter_title: 'Sushi')
filter19_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Sushi.jpg') 
filter19.photo.attach(io: filter19_photo, filename: 'Sushi.jpg')
filter20 = Filter.create!(filter_title: 'Italian')
filter20_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Italian.jpg') 
filter20.photo.attach(io: filter20_photo, filename: 'Italian.jpg')
filter21 = Filter.create!(filter_title: 'Pizza')
filter21_photo = open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Pizza.jpg') 
filter21.photo.attach(io: filter21_photo, filename: 'Pizza.jpg')

# # Store Filters (Joins Table)

StoreFilter.destroy_all
store_filter1 = StoreFilter.create!(store_id: store1.id, filter_id: filter3.id)
store_filter2 = StoreFilter.create!(store_id: store1.id, filter_id: filter2.id)
store_filter3 = StoreFilter.create!(store_id: store1.id, filter_id: filter6.id)
store_filter4 = StoreFilter.create!(store_id: store2.id, filter_id: filter2.id)
store_filter5 = StoreFilter.create!(store_id: store2.id, filter_id: filter5.id)
store_filter6 = StoreFilter.create!(store_id: store2.id, filter_id: filter19.id)
store_filter7 = StoreFilter.create!(store_id: store3.id, filter_id: filter2.id)
store_filter8 = StoreFilter.create!(store_id: store3.id, filter_id: filter13.id)
store_filter9 = StoreFilter.create!(store_id: store4.id, filter_id: filter2.id)
store_filter10 = StoreFilter.create!(store_id: store4.id, filter_id: filter6.id)
store_filter11 = StoreFilter.create!(store_id: store5.id, filter_id: filter2.id)
store_filter12 = StoreFilter.create!(store_id: store5.id, filter_id: filter16.id)
store_filter13 = StoreFilter.create!(store_id: store5.id, filter_id: filter10.id)
store_filter14 = StoreFilter.create!(store_id: store6.id, filter_id: filter1.id)
store_filter15 = StoreFilter.create!(store_id: store6.id, filter_id: filter3.id)
store_filter18 = StoreFilter.create!(store_id: store7.id, filter_id: filter2.id)
store_filter19 = StoreFilter.create!(store_id: store7.id, filter_id: filter6.id)
store_filter20 = StoreFilter.create!(store_id: store8.id, filter_id: filter2.id)
store_filter21 = StoreFilter.create!(store_id: store8.id, filter_id: filter11.id)
store_filter22 = StoreFilter.create!(store_id: store8.id, filter_id: filter13.id)
store_filter23 = StoreFilter.create!(store_id: store8.id, filter_id: filter16.id)
store_filter24 = StoreFilter.create!(store_id: store9.id, filter_id: filter2.id)
store_filter25 = StoreFilter.create!(store_id: store9.id, filter_id: filter9.id)
store_filter26 = StoreFilter.create!(store_id: store9.id, filter_id: filter11.id)
store_filter27 = StoreFilter.create!(store_id: store10.id, filter_id: filter2.id)
store_filter28 = StoreFilter.create!(store_id: store10.id, filter_id: filter6.id)
store_filter29 = StoreFilter.create!(store_id: store10.id, filter_id: filter9.id)
store_filter30 = StoreFilter.create!(store_id: store10.id, filter_id: filter11.id)
store_filter31 = StoreFilter.create!(store_id: store10.id, filter_id: filter19.id)
store_filter32 = StoreFilter.create!(store_id: store10.id, filter_id: filter18.id)
store_filter33 = StoreFilter.create!(store_id: store11.id, filter_id: filter2.id)
store_filter34 = StoreFilter.create!(store_id: store11.id, filter_id: filter6.id)
store_filter35 = StoreFilter.create!(store_id: store11.id, filter_id: filter19.id)
store_filter36 = StoreFilter.create!(store_id: store11.id, filter_id: filter18.id)
store_filter37 = StoreFilter.create!(store_id: store6.id, filter_id: filter4.id)


# RI XV

Menu.destroy_all
ri_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store11.id)
ri_menu2 = Menu.create!(title: 'Fine Dining', rank: 2, store_id: store11.id)
ri_menu3 = Menu.create!(title: 'Asian', rank: 3, store_id: store11.id)
ri_menu4 = Menu.create!(title: 'Wholesale', rank: 4, store_id: store11.id)

Item.destroy_all
item1 = Item.create!(name: 'Roasted Duck Breast(2)', price: 20.00, description: 'Pan-seared with rhubarb, fiddlehead fern, and gai lan', store_id: store11.id)
item1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Duck.jpg')
item1.photo.attach(io: item1_photo, filename: 'Duck.jpg')

item2 = Item.create!(name: '16oz. A5 Wagyu Ribeye', description: 'Grilled to perfection and served with dry-aged wagyu butter', price: 70.00, store_id: store11.id)
item2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Ribeye.jpg')
item2.photo.attach(io: item2_photo, filename: 'Ribeye.jpg')

item3 = Item.create!(name: 'Hamachi Nigiri Platter', description: 'IQF sushi-grade wild Hamachi from Japan',price: 35.00, store_id: store11.id)
item3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Hamachi.jpg')
item3.photo.attach(io: item3_photo, filename: 'Hamachi.jpg')

item4 = Item.create!(name: 'Peking Duck', price: 30.00, description: 'Thin pieces of tender, roasted duck meat and crispy skin wrapped in a thin crepe, along with sliced spring onions, cucumbers, and hoisin sauce or sweet bean sauce.',store_id: store11.id)
item4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Peking.jpg')
item4.photo.attach(io: item4_photo, filename: 'Peking.jpg')

item5 = Item.create!(name: 'Dumplings(25)', price: 20.00, description: 'Pork, cabbage, green onion' ,store_id: store11.id)
item5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DumplingW.jpg')
item5.photo.attach(io: item5_photo, filename: 'DumplingW.jpg')

item6 = Item.create!(name: 'Catfish', price: 26.00, description:'Freshly caught catfish', store_id: store11.id)
item6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/CatfishW.jpg')
item6.photo.attach(io: item6_photo, filename: 'CatfishW.jpg')

item7 = Item.create!(name: 'Whole Duck', price: 25.00,description: 'Freshly butchered duck', store_id: store11.id)
item7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DuckW.jpg')
item7.photo.attach(io: item7_photo, filename: 'DuckW.jpg')

item8 = Item.create!(name: 'A5 Wagyu Ribeye', price: 50.00, description: 'A5 Wagyu certified from Kobe Prefecture in Japan', store_id: store11.id)
item8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RibeyeW.jpg')
item8.photo.attach(io: item8_photo, filename: 'RibeyeW.jpg')


# Menu Items (Joins Table)
# MenuItem.destroy_all
menu_item1 = MenuItem.create!(menu_id: ri_menu1.id, item_id: item1.id, rank: 1, store_id: store11.id)
menu_item2 = MenuItem.create!(menu_id: ri_menu1.id, item_id: item2.id, rank: 2, store_id: store11.id)
menu_item3 = MenuItem.create!(menu_id: ri_menu1.id, item_id: item3.id, rank: 3, store_id: store11.id)
menu_item4 = MenuItem.create!(menu_id: ri_menu1.id, item_id: item4.id, rank: 4, store_id: store11.id)
menu_item4 = MenuItem.create!(menu_id: ri_menu2.id, item_id: item1.id, rank: 5, store_id: store11.id)
menu_item4 = MenuItem.create!(menu_id: ri_menu2.id, item_id: item2.id, rank: 6, store_id: store11.id)
menu_item4 = MenuItem.create!(menu_id: ri_menu2.id, item_id: item3.id, rank: 7, store_id: store11.id)
menu_item4 = MenuItem.create!(menu_id: ri_menu2.id, item_id: item4.id, rank: 8, store_id: store11.id)
menu_item4 = MenuItem.create!(menu_id: ri_menu3.id, item_id: item3.id, rank: 9, store_id: store11.id)
menu_item4 = MenuItem.create!(menu_id: ri_menu3.id, item_id: item4.id, rank: 10, store_id: store11.id)
menu_item5 = MenuItem.create!(menu_id: ri_menu4.id, item_id: item5.id, rank: 11, store_id: store11.id)
menu_item6 = MenuItem.create!(menu_id: ri_menu4.id, item_id: item6.id, rank: 12, store_id: store11.id)
menu_item7 = MenuItem.create!(menu_id: ri_menu4.id, item_id: item7.id, rank: 13, store_id: store11.id)
menu_item8 = MenuItem.create!(menu_id: ri_menu4.id, item_id: item8.id, rank: 14, store_id: store11.id)

# Wok & Go

wk_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store1.id)
wk_menu2 = Menu.create!(title: 'Appetizers', rank: 2, store_id: store1.id)
wk_menu3 = Menu.create!(title: 'Soups & Noodle Soups', rank: 3, store_id: store1.id)
wk_menu4 = Menu.create!(title: 'Vegetarian Dishes', rank: 4, store_id: store1.id)

wkitem1 = Item.create!(name: 'Salt & Pepper Chicken Wings', price: 10.99, description: 'Salt and pepper chicken wings are fried to a crunchy golden brown and then tossed in a garlic, red chili, white and black pepper mixture, that makes them flavorful and addictive.', store_id: store1.id)
wkitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WokGo.jpg')
wkitem1.photo.attach(io: wkitem1_photo, filename: 'WokGo.jpg')

wkitem2 = Item.create!(name: 'Preserved Egg & Pork Porridge', description: 'Slow cooked until creamy and leaves you feeling nourished', price: 9.99, store_id: store1.id)
wkitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WokGo2.jpg') 
wkitem2.photo.attach(io: wkitem2_photo, filename: 'WokGo2.jpg')

wkitem3 = Item.create!(name: 'Potstickers', description: 'Steam-fried dumplings made with round wrappers and stuffed with juicy fillings, traditionally pork and cabbage.',price: 35.00, store_id: store1.id)
wkitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKPotstickers.jpg')
wkitem3.photo.attach(io: wkitem3_photo, filename: 'WKPotstickers.jpg')

wkitem4 = Item.create!(name: 'Scallion Pancake', price: 8.99, description: 'Chinese, savory, unleavened flatbread folded with oil and minced scallions.',store_id: store1.id)
wkitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKGreenOnion.jpg')
wkitem4.photo.attach(io: wkitem4_photo, filename: 'WKGreenOnion.jpg')

wkitem5 = Item.create!(name: 'Wonton Noodle Soup', price: 9.99, description: 'Bok choy, shrimp, pork/prawn filling wontons, and egg noodles, ' ,store_id: store1.id)
wkitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKWontonNoodle.jpg')
wkitem5.photo.attach(io: wkitem5_photo, filename: 'WKWontonNoodle.jpg')

wkitem6 = Item.create!(name: 'Hot & Sour Soup', price: 6.99, description:'Pork shoulder, wood ear mushrooms, bamboo shoots, and tofu', store_id: store1.id)
wkitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKHotSour.jpg')
wkitem6.photo.attach(io: wkitem6_photo, filename: 'WKHotSour.jpg')

wkitem7 = Item.create!(name: 'Garlic Snow Pea Leaves', price: 9.99,description: 'Snow pea leaves, sesame oil, garlic, white pepper, vegetable oil', store_id: store1.id)
wkitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKPeaLeaves.jpg')
wkitem7.photo.attach(io: wkitem7_photo, filename: 'WKPeaLeaves.jpg')

wkitem8 = Item.create!(name: 'Chinese Broccoli', price: 8.99, description: 'Gai Lan, soy sauce, sesame oil, chinese rice wine, ginger', store_id: store1.id)
wkitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKCBroccoli.jpg')
wkitem8.photo.attach(io: wkitem8_photo, filename: 'WKCBroccoli.jpg')

wkitem9 = Item.create!(name: 'Pickled Mustard Green Noodle Soup', price: 9.99, description: 'Pickled mustard greens, noodles, shredded pork, sesame oil, soy sauce', store_id: store1.id)
wkitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKMustardSoup.jpg')
wkitem9.photo.attach(io: wkitem9_photo, filename: 'WKMustardSoup.jpg')

wkitem10 = Item.create!(name: 'Seafood Noodle Soup', price: 11.99, description: 'Bok choy, mussels, shrimp, squid, soy sauces, sesame sauce, and noodles', store_id: store1.id)
wkitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKSeafoodSoup.jpg')
wkitem10.photo.attach(io: wkitem10_photo, filename: 'WKSeafoodSoup.jpg')

wkitem11 = Item.create!(name: 'Eggplant with Garlic Sauce', price: 9.99, description: 'Eggplant, soy sauce, black vinegar, red chili, and garlic', store_id: store1.id)
wkitem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKEggplant.jpg')
wkitem11.photo.attach(io: wkitem11_photo, filename: 'WKEggplant.jpg')

wkitem12 = Item.create!(name: 'Fried Tofu', price: 6.99, description: 'Soy Sauce, sesame oil, extra firm tofu, and green onion', store_id: store1.id)
wkitem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/WKFriedTofu.jpg')
wkitem12.photo.attach(io: wkitem12_photo, filename: 'WKFriedTofu.jpg')

wkmenu_item1 = MenuItem.create!(menu_id: wk_menu1.id, item_id: wkitem1.id, rank: 1, store_id: store1.id)
wkmenu_item2 = MenuItem.create!(menu_id: wk_menu1.id, item_id: wkitem2.id, rank: 2, store_id: store1.id)
wkmenu_item3 = MenuItem.create!(menu_id: wk_menu1.id, item_id: wkitem5.id, rank: 3, store_id: store1.id)
wkmenu_item4 = MenuItem.create!(menu_id: wk_menu1.id, item_id: wkitem7.id, rank: 4, store_id: store1.id)
wkmenu_item5 = MenuItem.create!(menu_id: wk_menu2.id, item_id: wkitem1.id, rank: 5, store_id: store1.id)
wkmenu_item6 = MenuItem.create!(menu_id: wk_menu2.id, item_id: wkitem2.id, rank: 6, store_id: store1.id)
wkmenu_item7 = MenuItem.create!(menu_id: wk_menu2.id, item_id: wkitem3.id, rank: 7, store_id: store1.id)
wkmenu_item8 = MenuItem.create!(menu_id: wk_menu2.id, item_id: wkitem4.id, rank: 8, store_id: store1.id)
wkmenu_item9 = MenuItem.create!(menu_id: wk_menu3.id, item_id: wkitem5.id, rank: 9, store_id: store1.id)
wkmenu_item10 = MenuItem.create!(menu_id: wk_menu3.id, item_id: wkitem6.id, rank: 10, store_id: store1.id)
wkmenu_item11 = MenuItem.create!(menu_id: wk_menu3.id, item_id: wkitem9.id, rank: 11, store_id: store1.id)
wkmenu_item12 = MenuItem.create!(menu_id: wk_menu3.id, item_id: wkitem10.id, rank: 12, store_id: store1.id)
wkmenu_item13 = MenuItem.create!(menu_id: wk_menu4.id, item_id: wkitem11.id, rank: 13, store_id: store1.id)
wkmenu_item14 = MenuItem.create!(menu_id: wk_menu4.id, item_id: wkitem12.id, rank: 14, store_id: store1.id)
wkmenu_item15 = MenuItem.create!(menu_id: wk_menu4.id, item_id: wkitem7.id, rank: 15, store_id: store1.id)
wkmenu_item16 = MenuItem.create!(menu_id: wk_menu4.id, item_id: wkitem8.id, rank: 16, store_id: store1.id)

# Marugame

mgitem1 = Item.create!(name: 'Nikutama Udon', price: 8.90, description: 'Our made to order Sanuki Udon noodles served with our signature Sweet & Savory Beef in our signature Bukkake SAUCE and topped with a Hot Spring Egg.', store_id: store2.id)
mgitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGNikutama.jpg')
mgitem1.photo.attach(io: mgitem1_photo, filename: 'MGNikutama.jpg')

mgitem2 = Item.create!(name: 'Curry Udon', description: 'Our signature beef Curry Udon served with our made to order Sanuki Udon noodles', price: 7.30, store_id: store2.id)
mgitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGCurry.jpg') 
mgitem2.photo.attach(io: mgitem2_photo, filename: 'MGCurry.jpg')

mgitem3 = Item.create!(name: 'Spam Musubi', description: 'A slice of our special grilled and seasoned SPAM on white rice. Listed price is for 1 Spam Musubi.',price: 2.80, store_id: store2.id)
mgitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGSpamMusubi.jpg')
mgitem3.photo.attach(io: mgitem3_photo, filename: 'MGSpamMusubi.jpg')

mgitem4 = Item.create!(name: 'Crab Meat Musubi', price: 1.50, description: 'A musubi rice ball filled with an Imitation Crab Meat / mayonnaise mix.',store_id: store2.id)
mgitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGCrabMusubi.jpg')
mgitem4.photo.attach(io: mgitem4_photo, filename: 'MGCrabMusubi.jpg')

mgitem5 = Item.create!(name: 'Mentai Mayo Musubi', price: 1.70, description: 'A musubi rice ball filled with a Mentai (Cod Roe) / mayonnaise mix.' ,store_id: store2.id)
mgitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGMentaiMusubi.jpg')
mgitem5.photo.attach(io: mgitem5_photo, filename: 'MGMentaiMusubi.jpg')

mgitem6 = Item.create!(name: 'Salmon Flake Musubi', price: 1.70, description:'A musubi rice ball filled with flaked Salmon meat.', store_id: store2.id)
mgitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGSalmonMusubi.jpg')
mgitem6.photo.attach(io: mgitem6_photo, filename: 'MGSalmonMusubi.jpg')

mgitem7 = Item.create!(name: 'Chicken Tempura', price: 1.90,description: 'Soy sauce marinated chicken breast deep fried with Tempura batter.', store_id: store2.id)
mgitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGChickenTempura.jpg')
mgitem7.photo.attach(io: mgitem7_photo, filename: 'MGChickenTempura.jpg')

mgitem8 = Item.create!(name: 'Fishcake Tempura', price: 1.80, description: 'White fish based "Chikuwa" fishcake deep fried in Tempura batter.', store_id: store2.id)
mgitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGFishcakeTempura.jpg')
mgitem8.photo.attach(io: mgitem8_photo, filename: 'MGFishcakeTempura.jpg')

mgitem9 = Item.create!(name: 'Shrimp Tempura', price: 2.00, description: 'A large Shrimp deep fried with Tempura batter.', store_id: store2.id)
mgitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGShrimpTempura.jpg')
mgitem9.photo.attach(io: mgitem9_photo, filename: 'MGShrimpTempura.jpg')

mgitem10 = Item.create!(name: 'Sweet Potato Tempura', price: 1.70, description: 'A Japanese "Satsuma Imo" sweet potato deep fried in Tempura batter.', store_id: store2.id)
mgitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGSweetTempura.jpg')
mgitem10.photo.attach(io: mgitem10_photo, filename: 'MGSweetTempura.jpg')

mgitem11 = Item.create!(name: 'Zucchini Tempura', price: 1.40, description: 'A slice of Zucchini squash deep fried in Tempura batter.', store_id: store2.id)
mgitem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGZucchiniTempura.jpg')
mgitem11.photo.attach(io: mgitem11_photo, filename: 'MGZucchiniTempura.jpg')

mgitem12 = Item.create!(name: 'Pumpkin Tempura', price: 1.30, description: 'A slice of Japanese "Kabocha" pumpkin deep fried in Tempura batter.', store_id: store2.id)
mgitem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGPumpkinTempura.jpg')
mgitem12.photo.attach(io: mgitem12_photo, filename: 'MGPumpkinTempura.jpg')

mgitem13 = Item.create!(name: 'Squid Tempura', price: 2.10, description: 'A sliced Squid deep fried in Tempura batter.', store_id: store2.id)
mgitem13_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGSquidTempura.jpg')
mgitem13.photo.attach(io: mgitem13_photo, filename: 'MGSquidTempura.jpg')

mgitem14 = Item.create!(name: 'Potato Croquette', price: 2.10, description: 'Mashed Potato deep fried in Panko bread crumbs.', store_id: store2.id)
mgitem14_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MGCroquette.jpg')
mgitem14.photo.attach(io: mgitem14_photo, filename: 'MGCroquette.jpg')

mg_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store2.id)
mg_menu2 = Menu.create!(title: 'Udon', rank: 2, store_id: store2.id)
mg_menu3 = Menu.create!(title: 'Musubi', rank: 3, store_id: store2.id)
mg_menu4 = Menu.create!(title: 'Tempura', rank: 4, store_id: store2.id)

mgmenu_item1 = MenuItem.create!(menu_id: mg_menu1.id, item_id: mgitem1.id, rank: 1, store_id: store2.id)
mgmenu_item2 = MenuItem.create!(menu_id: mg_menu1.id, item_id: mgitem2.id, rank: 2, store_id: store2.id)
mgmenu_item3 = MenuItem.create!(menu_id: mg_menu1.id, item_id: mgitem3.id, rank: 3, store_id: store2.id)
mgmenu_item4 = MenuItem.create!(menu_id: mg_menu1.id, item_id: mgitem9.id, rank: 4, store_id: store2.id)
mgmenu_item5 = MenuItem.create!(menu_id: mg_menu1.id, item_id: mgitem5.id, rank: 5, store_id: store2.id)
mgmenu_item6 = MenuItem.create!(menu_id: mg_menu2.id, item_id: mgitem1.id, rank: 6, store_id: store2.id)
mgmenu_item7 = MenuItem.create!(menu_id: mg_menu2.id, item_id: mgitem2.id, rank: 7, store_id: store2.id)
mgmenu_item8 = MenuItem.create!(menu_id: mg_menu3.id, item_id: mgitem3.id, rank: 8, store_id: store2.id)
mgmenu_item9 = MenuItem.create!(menu_id: mg_menu3.id, item_id: mgitem4.id, rank: 9, store_id: store2.id)
mgmenu_item10 = MenuItem.create!(menu_id: mg_menu3.id, item_id: mgitem5.id, rank: 10, store_id: store2.id)
mgmenu_item11 = MenuItem.create!(menu_id: mg_menu3.id, item_id: mgitem6.id, rank: 11, store_id: store2.id)
mgmenu_item12 = MenuItem.create!(menu_id: mg_menu4.id, item_id: mgitem7.id, rank: 12, store_id: store2.id)
mgmenu_item13 = MenuItem.create!(menu_id: mg_menu4.id, item_id: mgitem8.id, rank: 13, store_id: store2.id)
mgmenu_item14 = MenuItem.create!(menu_id: mg_menu4.id, item_id: mgitem9.id, rank: 14, store_id: store2.id)
mgmenu_item15 = MenuItem.create!(menu_id: mg_menu4.id, item_id: mgitem10.id, rank: 15, store_id: store2.id)
mgmenu_item16 = MenuItem.create!(menu_id: mg_menu4.id, item_id: mgitem11.id, rank: 16, store_id: store2.id)
mgmenu_item17 = MenuItem.create!(menu_id: mg_menu4.id, item_id: mgitem12.id, rank: 17, store_id: store2.id)
mgmenu_item18 = MenuItem.create!(menu_id: mg_menu4.id, item_id: mgitem13.id, rank: 18, store_id: store2.id)
mgmenu_item19 = MenuItem.create!(menu_id: mg_menu4.id, item_id: mgitem14.id, rank: 19, store_id: store2.id)

# Benu

benuitem1 = Item.create!(name: '1st Course', price: 20.00, description: 'Thousand year old quail egg, cabbage juice, ginger.', store_id: store3.id)
benuitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu1.jpg')
benuitem1.photo.attach(io: benuitem1_photo, filename: 'Benu1.jpg')

benuitem2 = Item.create!(name: '2nd Course', description: 'Pork belly, oyster and kimchi shooter.', price: 25.00, store_id: store3.id)
benuitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu2.jpg') 
benuitem2.photo.attach(io: benuitem2_photo, filename: 'Benu2.jpg')

benuitem3 = Item.create!(name: '3rd Course', description: 'Shrimp tempura, jellyfish, seaweed.',price: 20.00, store_id: store3.id)
benuitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu3.jpg')
benuitem3.photo.attach(io: benuitem3_photo, filename: 'Benu3.jpg')

benuitem4 = Item.create!(name: '4th Course', price: 23.00, description: 'Blood sausage, sweet rice, squid ink, shiso.',store_id: store3.id)
benuitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu4.jpg')
benuitem4.photo.attach(io: benuitem4_photo, filename: 'Benu4.jpg')

benuitem5 = Item.create!(name: '5th Course', price: 17.00, description: 'Ginkgo flour "tortilla", matsutake mushroom, pine needles, 10 year old aged pine syrup.' ,store_id: store3.id)
benuitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu5.jpg')
benuitem5.photo.attach(io: benuitem5_photo, filename: 'Benu5.jpg')

benuitem6 = Item.create!(name: '6th Course', price: 29.00, description:'Chicken wing stuffed with abalone and abalone liver mousse.', store_id: store3.id)
benuitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu6.jpg')
benuitem6.photo.attach(io: benuitem6_photo, filename: 'Benu6.jpg')

benuitem7 = Item.create!(name: '7th Course', price: 35.00,description: '"Shark fin" soup - Dungeness crab, ham, egg white and black truffles.', store_id: store3.id)
benuitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu7.jpg')
benuitem7.photo.attach(io: benuitem7_photo, filename: 'Benu7.jpg')

benuitem8 = Item.create!(name: '8th Course', price: 27.00, description: 'Xiao long bao with lobster coral, house-made soy sauce, vinegar.', store_id: store3.id)
benuitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu8.jpg')
benuitem8.photo.attach(io: benuitem8_photo, filename: 'Benu8.jpg')

benuitem9 = Item.create!(name: '9th Course', price: 30.00, description: 'Sea urchin marinated in fermented crab sauce, with thinly sliced celtuce.', store_id: store3.id)
benuitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu9.jpg')
benuitem9.photo.attach(io: benuitem9_photo, filename: 'Benu9.jpg')

benuitem10 = Item.create!(name: '10th Course', price: 32.00, description: 'Monkfish liver steamed in rice wine, with toasted seaweed and chili.', store_id: store3.id)
benuitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu10.jpg')
benuitem10.photo.attach(io: benuitem10_photo, filename: 'Benu10.jpg')

benuitem11 = Item.create!(name: '11th Course', price: 26.00, description: 'Caviar with hand-pressed sesame oil, sesame leaf and daikon.', store_id: store3.id)
benuitem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu11.jpg')
benuitem11.photo.attach(io: benuitem11_photo, filename: 'Benu11.jpg')

benuitem12 = Item.create!(name: '12th Course', price: 67.00, description: 'Barbecued quail from Wolfe Ranch.', store_id: store3.id)
benuitem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu12.jpg')
benuitem12.photo.attach(io: benuitem12_photo, filename: 'Benu12.jpg')

benuitem13 = Item.create!(name: '13th Course', price: 23.00, description: 'Butter with orange blossom honey and ginseng.', store_id: store3.id)
benuitem13_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Benu13.jpg')
benuitem13.photo.attach(io: benuitem13_photo, filename: 'Benu13.jpg')

benu_menu1 = Menu.create!(title: 'Fixed Menu', rank: 1, store_id: store3.id)

benumenu_item1 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem1.id, rank: 1, store_id: store3.id)
benumenu_item2 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem2.id, rank: 2, store_id: store3.id)
benumenu_item3 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem3.id, rank: 3, store_id: store3.id)
benumenu_item4 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem4.id, rank: 4, store_id: store3.id)
benumenu_item5 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem5.id, rank: 5, store_id: store3.id)
benumenu_item6 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem6.id, rank: 6, store_id: store3.id)
benumenu_item7 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem7.id, rank: 7, store_id: store3.id)
benumenu_item8 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem8.id, rank: 8, store_id: store3.id)
benumenu_item9 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem9.id, rank: 9, store_id: store3.id)
benumenu_item10 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem10.id, rank: 10, store_id: store3.id)
benumenu_item11 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem11.id, rank: 11, store_id: store3.id)
benumenu_item12 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem12.id, rank: 12, store_id: store3.id)
benumenu_item13 = MenuItem.create!(menu_id: benu_menu1.id, item_id: benuitem13.id, rank: 13, store_id: store3.id)

# Little Szechuan

# store4 = Store.find_by(name: "Little Szechuan")
szitem1 = Item.create!(name: 'A1. Braised Crispy Chicken w/ Jalapeno辣子鸡', price: 16.98, store_id: store4.id)
szitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-A1.jpg')
szitem1.photo.attach(io: szitem1_photo, filename: 'SZ-A1.jpg')

szitem2 = Item.create!(name: 'A2. General Tso Chicken  左中堂鸡', price: 14.98, store_id: store4.id)
szitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-A1.jpg') 
szitem2.photo.attach(io: szitem2_photo, filename: 'SZ-A1.jpg')

szitem3 = Item.create!(name: 'B1. Spicy Twice Cooked Pork  川味回锅肉',price: 14.98, store_id: store4.id)
szitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-B1.jpg')
szitem3.photo.attach(io: szitem3_photo, filename: 'SZ-B1.jpg')

szitem4 = Item.create!(name: 'B2. Sweet & Sour Pork  咕噜肉', price: 13.98, store_id: store4.id)
szitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-B2.jpg')
szitem4.photo.attach(io: szitem4_photo, filename: 'SZ-B2.jpg')

szitem5 = Item.create!(name: 'C1. Fish Fillet Boiled w/ Flaming Chili OIl 水煮鱼片', price: 18.98, store_id: store4.id)
szitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-C1.jpg')
szitem5.photo.attach(io: szitem5_photo, filename: 'SZ-C1.jpg')

szitem6 = Item.create!(name: 'C2. Honey Walnut Prawns 合桃虾', price: 17.98, store_id: store4.id)
szitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-C2.jpg')
szitem6.photo.attach(io: szitem6_photo, filename: 'SZ-C2.jpg')

szitem7 = Item.create!(name: 'C3. Dry Spicy Prawns (w/ Shell) 香辣跳跳虾', price: 17.98, store_id: store4.id)
szitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-C3.jpg')
szitem7.photo.attach(io: szitem7_photo, filename: 'SZ-C3.jpg')

szitem8 = Item.create!(name: 'D1. Honey Lemon Black Tea', price: 3.98, store_id: store4.id)
szitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-D1.jpg')
szitem8.photo.attach(io: szitem8_photo, filename: 'SZ-D1.jpg')

szitem9 = Item.create!(name: 'D2. Carrot 红萝卜汁', price: 5.98, store_id: store4.id)
szitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-D2.jpg')
szitem9.photo.attach(io: szitem9_photo, filename: 'SZ-D2.jpg')

szitem10 = Item.create!(name: 'D3. Soft Drink', price: 1.98, store_id: store4.id)
szitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SZ-D3.jpg')
szitem10.photo.attach(io: szitem10_photo, filename: 'SZ-D3.jpg')


sz_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store4.id)
sz_menu2 = Menu.create!(title: 'Poultry', rank: 2, store_id: store4.id)
sz_menu3 = Menu.create!(title: 'Pork', rank: 3, store_id: store4.id)
sz_menu4 = Menu.create!(title: 'Seafood', rank: 4, store_id: store4.id)
sz_menu5 = Menu.create!(title: 'Drinks', rank: 5, store_id: store4.id)

szmenu_item1 = MenuItem.create!(menu_id: sz_menu1.id, item_id: szitem1.id, rank: 1, store_id: store4.id)
szmenu_item2 = MenuItem.create!(menu_id: sz_menu1.id, item_id: szitem2.id, rank: 2, store_id: store4.id)
szmenu_item3 = MenuItem.create!(menu_id: sz_menu1.id, item_id: szitem3.id, rank: 3, store_id: store4.id)
szmenu_item4 = MenuItem.create!(menu_id: sz_menu1.id, item_id: szitem7.id, rank: 4, store_id: store4.id)
szmenu_item5 = MenuItem.create!(menu_id: sz_menu1.id, item_id: szitem5.id, rank: 5, store_id: store4.id)
szmenu_item6 = MenuItem.create!(menu_id: sz_menu1.id, item_id: szitem9.id, rank: 6, store_id: store4.id)
szmenu_item7 = MenuItem.create!(menu_id: sz_menu1.id, item_id: szitem8.id, rank: 7, store_id: store4.id)
szmenu_item8 = MenuItem.create!(menu_id: sz_menu2.id, item_id: szitem1.id, rank: 8, store_id: store4.id)
szmenu_item9 = MenuItem.create!(menu_id: sz_menu2.id, item_id: szitem2.id, rank: 9, store_id: store4.id)
szmenu_item10 = MenuItem.create!(menu_id: sz_menu3.id, item_id: szitem3.id, rank: 10, store_id: store4.id)
szmenu_item11 = MenuItem.create!(menu_id: sz_menu3.id, item_id: szitem4.id, rank: 11, store_id: store4.id)
szmenu_item12 = MenuItem.create!(menu_id: sz_menu4.id, item_id: szitem5.id, rank: 12, store_id: store4.id)
szmenu_item13 = MenuItem.create!(menu_id: sz_menu4.id, item_id: szitem6.id, rank: 13, store_id: store4.id)
szmenu_item14 = MenuItem.create!(menu_id: sz_menu4.id, item_id: szitem7.id, rank: 14, store_id: store4.id)
szmenu_item15 = MenuItem.create!(menu_id: sz_menu5.id, item_id: szitem8.id, rank: 15, store_id: store4.id)
szmenu_item16 = MenuItem.create!(menu_id: sz_menu5.id, item_id: szitem9.id, rank: 16, store_id: store4.id)
szmenu_item17 = MenuItem.create!(menu_id: sz_menu5.id, item_id: szitem10.id, rank: 17, store_id: store4.id)

# Thanh Tam II

store5 = Store.find_by(name: "Thanh Tam II")
ttitem1 = Item.create!(name: 'Pho Dac Biet', description: 'Special combination beef noodle soup', price: 13.49, store_id: store5.id)
ttitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TTDacBiet.jpg')
ttitem1.photo.attach(io: ttitem1_photo, filename: 'TTDacBiet.jpg')

ttitem2 = Item.create!(name: 'Pho Ga', description: 'Chicken noodle soup', price: 11.49, store_id: store5.id)
ttitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TTPhoGa.jpg') 
ttitem2.photo.attach(io: ttitem2_photo, filename: 'TTPhoGa.jpg')

ttitem3 = Item.create!(name: 'Bun Rieu', description: 'Tomato noodle soup', price: 13.49, store_id: store5.id)
ttitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TTBunRieu.jpg')
ttitem3.photo.attach(io: ttitem3_photo, filename: 'TTBunRieu.jpg')

ttitem4 = Item.create!(name: 'Bun Bo Hue', description: 'Spicy vermicelli noodle soup', price: 13.49, store_id: store5.id)
ttitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TTBunBoHue.jpg')
ttitem4.photo.attach(io: ttitem4_photo, filename: 'TTBunBoHue.jpg')

ttitem5 = Item.create!(name: 'Egg Roll', description: 'Crispy fried savory roll with shredded cabbage, chopped pork', price: 8.49, store_id: store5.id)
ttitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TTEggRoll.jpg')
ttitem5.photo.attach(io: ttitem5_photo, filename: 'TTEggRoll.jpg')

ttitem6 = Item.create!(name: 'Spring Roll', description: 'Hoisin sauce, garlic chili sauce, fresh thai basil, fish sauce, rice vermicelli, shrimp', price: 8.49, store_id: store5.id)
ttitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ThanhTam2.jpg')
ttitem6.photo.attach(io: ttitem6_photo, filename: 'ThanhTam2.jpg')

ttitem7 = Item.create!(name: 'Grilled Steak Banh Mi', description: 'Beef sirloin tip, fish sauce, pickled carrots, garlic, onions, parsley', price: 9.50, store_id: store5.id)
ttitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TTBeefBanh.jpg')
ttitem7.photo.attach(io: ttitem7_photo, filename: 'TTBeefBanh.jpg')

ttitem8 = Item.create!(name: 'Grilled Chicken Banh Mi', description: 'Grilled chicken thigh, fish sauce, pickled carrots, garlic, onions, parsley', price: 7.50, store_id: store5.id)
ttitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TTChickenBanh.jpg')
ttitem8.photo.attach(io: ttitem8_photo, filename: 'TTChickenBanh.jpg')


tt_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store5.id)
tt_menu2 = Menu.create!(title: 'Pho', rank: 2, store_id: store5.id)
tt_menu3 = Menu.create!(title: 'Rolls', rank: 3, store_id: store5.id)
tt_menu4 = Menu.create!(title: 'Banh Mi', rank: 4, store_id: store5.id)

ttmenu_item1 = MenuItem.create!(menu_id: tt_menu1.id, item_id: ttitem1.id, rank: 1, store_id: store5.id)
ttmenu_item2 = MenuItem.create!(menu_id: tt_menu1.id, item_id: ttitem2.id, rank: 2, store_id: store5.id)
ttmenu_item3 = MenuItem.create!(menu_id: tt_menu1.id, item_id: ttitem4.id, rank: 3, store_id: store5.id)
ttmenu_item4 = MenuItem.create!(menu_id: tt_menu1.id, item_id: ttitem5.id, rank: 4, store_id: store5.id)
ttmenu_item5 = MenuItem.create!(menu_id: tt_menu1.id, item_id: ttitem6.id, rank: 5, store_id: store5.id)
ttmenu_item6 = MenuItem.create!(menu_id: tt_menu1.id, item_id: ttitem7.id, rank: 6, store_id: store5.id)
ttmenu_item7 = MenuItem.create!(menu_id: tt_menu2.id, item_id: ttitem1.id, rank: 7, store_id: store5.id)
ttmenu_item8 = MenuItem.create!(menu_id: tt_menu2.id, item_id: ttitem2.id, rank: 8, store_id: store5.id)
ttmenu_item9 = MenuItem.create!(menu_id: tt_menu2.id, item_id: ttitem3.id, rank: 9, store_id: store5.id)
ttmenu_item10 = MenuItem.create!(menu_id: tt_menu2.id, item_id: ttitem4.id, rank: 10, store_id: store5.id)
ttmenu_item11 = MenuItem.create!(menu_id: tt_menu3.id, item_id: ttitem5.id, rank: 11, store_id: store5.id)
ttmenu_item12 = MenuItem.create!(menu_id: tt_menu3.id, item_id: ttitem6.id, rank: 12, store_id: store5.id)
ttmenu_item13 = MenuItem.create!(menu_id: tt_menu4.id, item_id: ttitem7.id, rank: 13, store_id: store5.id)
ttmenu_item14 = MenuItem.create!(menu_id: tt_menu4.id, item_id: ttitem8.id, rank: 14, store_id: store5.id)

# McDonalds

# store6 = Store.find_by(name: "Mcdonalds")
mcitem1 = Item.create!(name: 'McLovin It Challenge', description: "Not for the faint of heart, or those on a diet.", price: 39.99, store_id: store6.id)
mcitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCLovinChallenge.jpg')
mcitem1.photo.attach(io: mcitem1_photo, filename: 'MCLovinChallenge.jpg')

mcitem2 = Item.create!(name: 'McTreat Yo Self', description: "Had a rough day? Had a great day? Get this.", price: 29.99, store_id: store6.id)
mcitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCTreatYoSelf.jpg') 
mcitem2.photo.attach(io: mcitem2_photo, filename: 'MCTreatYoSelf.jpg')

mcitem3 = Item.create!(name: 'McIdeal', description: "The perfect amount of nuggets and fries.", price: 14.99, store_id: store6.id)
mcitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCIdeal.jpg')
mcitem3.photo.attach(io: mcitem3_photo, filename: 'MCIdeal.jpg')

mcitem4 = Item.create!(name: 'Big Mac Meal', price: 10.99, store_id: store6.id)
mcitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCBigMacMeal.jpg')
mcitem4.photo.attach(io: mcitem4_photo, filename: 'MCBigMacMeal.jpg')

mcitem5 = Item.create!(name: 'McChicken Meal', price: 7.99, store_id: store6.id)
mcitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCChickenMeal.jpg')
mcitem5.photo.attach(io: mcitem5_photo, filename: 'MCChickenMeal.jpg')

mcitem6 = Item.create!(name: 'Hamburger', description: "When you can't afford a Cheeseburger.", price: 1.49, store_id: store6.id)
mcitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCHamburger.jpg')
mcitem6.photo.attach(io: mcitem6_photo, filename: 'MCHamburger.jpg')

mcitem7 = Item.create!(name: 'Cheeseburger', description: "When you can't afford a McChicken.", price: 1.89, store_id: store6.id)
mcitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCCheeseBurger.jpg')
mcitem7.photo.attach(io: mcitem7_photo, filename: 'MCCheeseBurger.jpg')

mcitem8 = Item.create!(name: 'McChicken', description:"The best thing on the menu.", price: 2.89, store_id: store6.id)
mcitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCChicken.jpg')
mcitem8.photo.attach(io: mcitem8_photo, filename: 'MCChicken.jpg')

mcitem9 = Item.create!(name: 'Filet O Fish', description: "For the health conscious, but still want to eat.",price: 5.99, store_id: store6.id)
mcitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCFishFilet.jpg')
mcitem9.photo.attach(io: mcitem9_photo, filename: 'MCFishFilet.jpg')

mcitem10 = Item.create!(name: 'Large Fries', price: 2.69, store_id: store6.id)
mcitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCLargeFries.jpg')
mcitem10.photo.attach(io: mcitem10_photo, filename: 'MCLargeFries.jpg')

mcitem11 = Item.create!(name: 'Hash Brown', price: 0.99, store_id: store6.id)
mcitem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCHashBrown.jpg')
mcitem11.photo.attach(io: mcitem11_photo, filename: 'MCHashBrown.jpg')

mcitem12 = Item.create!(name: 'McFlurry', price: 3.19, store_id: store6.id)
mcitem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCFlurry.jpg')
mcitem12.photo.attach(io: mcitem12_photo, filename: 'MCFlurry.jpg')

mcitem13 = Item.create!(name: 'Apple Pie', price: 1.69, store_id: store6.id)
mcitem13_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCApplePie.jpg')
mcitem13.photo.attach(io: mcitem13_photo, filename: 'MCApplePie.jpg')

mcitem14 = Item.create!(name: '2 Cookies', price: 1.79, store_id: store6.id)
mcitem14_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCCookies.jpg')
mcitem14.photo.attach(io: mcitem14_photo, filename: 'MCCookies.jpg')

mcitem15 = Item.create!(name: 'Hot Mustard', description: "The only dipping sauce you need.", price: 0, store_id: store6.id)
mcitem15_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/MCHotMustard.jpg')
mcitem15.photo.attach(io: mcitem15_photo, filename: 'MCHotMustard.jpg')


mc_menu1 = Menu.create!(title: 'Most Popular', rank: 1, store_id: store6.id)
mc_menu2 = Menu.create!(title: 'Combo Meals', rank: 2, store_id: store6.id)
mc_menu3 = Menu.create!(title: 'Sandwiches', rank: 3, store_id: store6.id)
mc_menu4 = Menu.create!(title: 'Fries Sides & More', rank: 4, store_id: store6.id)

mcmenu_item1 = MenuItem.create!(menu_id: mc_menu1.id, item_id: mcitem1.id, rank: 1, store_id: store6.id)
mcmenu_item2 = MenuItem.create!(menu_id: mc_menu1.id, item_id: mcitem2.id, rank: 2, store_id: store6.id)
mcmenu_item3 = MenuItem.create!(menu_id: mc_menu1.id, item_id: mcitem3.id, rank: 3, store_id: store6.id)
mcmenu_item4 = MenuItem.create!(menu_id: mc_menu1.id, item_id: mcitem8.id, rank: 4, store_id: store6.id)
mcmenu_item5 = MenuItem.create!(menu_id: mc_menu1.id, item_id: mcitem10.id, rank: 5, store_id: store6.id)
mcmenu_item6 = MenuItem.create!(menu_id: mc_menu1.id, item_id: mcitem15.id, rank: 6, store_id: store6.id)

mcmenu_item7 = MenuItem.create!(menu_id: mc_menu2.id, item_id: mcitem1.id, rank: 7, store_id: store6.id)
mcmenu_item8 = MenuItem.create!(menu_id: mc_menu2.id, item_id: mcitem2.id, rank: 8, store_id: store6.id)
mcmenu_item9 = MenuItem.create!(menu_id: mc_menu2.id, item_id: mcitem3.id, rank: 9, store_id: store6.id)
mcmenu_item10 = MenuItem.create!(menu_id: mc_menu2.id, item_id: mcitem4.id, rank: 10, store_id: store6.id)
mcmenu_item11 = MenuItem.create!(menu_id: mc_menu2.id, item_id: mcitem5.id, rank: 11, store_id: store6.id)
mcmenu_item12 = MenuItem.create!(menu_id: mc_menu3.id, item_id: mcitem6.id, rank: 12, store_id: store6.id)
mcmenu_item13 = MenuItem.create!(menu_id: mc_menu3.id, item_id: mcitem7.id, rank: 13, store_id: store6.id)
mcmenu_item14 = MenuItem.create!(menu_id: mc_menu3.id, item_id: mcitem8.id, rank: 14, store_id: store6.id)
mcmenu_item15 = MenuItem.create!(menu_id: mc_menu3.id, item_id: mcitem9.id, rank: 15, store_id: store6.id)
mcmenu_item16 = MenuItem.create!(menu_id: mc_menu4.id, item_id: mcitem10.id, rank: 16, store_id: store6.id)
mcmenu_item17 = MenuItem.create!(menu_id: mc_menu4.id, item_id: mcitem11.id, rank: 17, store_id: store6.id)
mcmenu_item18 = MenuItem.create!(menu_id: mc_menu4.id, item_id: mcitem12.id, rank: 18, store_id: store6.id)
mcmenu_item19 = MenuItem.create!(menu_id: mc_menu4.id, item_id: mcitem13.id, rank: 19, store_id: store6.id)
mcmenu_item20 = MenuItem.create!(menu_id: mc_menu4.id, item_id: mcitem14.id, rank: 20, store_id: store6.id)

# Seapot

# store7 = Store.find_by(name: "Seapot")
spitem1 = Item.create!(name: 'Taiwanese Hot Pot', description: "Taiwanese cabbage, instant noodle, beef slices. Beef tendon, enoki mushroom, tempura, clam, fuzhou fishball,cuttlefish rang, pork blood rice cake, pork intestine, fried tofu skin, brown beech mushroom, tofu imitation crabmeat, meatball, sour mustard, fried tofu puff. cilantro. Scallion.(None Spicy&Mild Spicy Contains Nuts).", price: 18.99, store_id: store7.id)
spitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPTaiwanese.jpg')
spitem1.photo.attach(io: spitem1_photo, filename: 'SPTaiwanese.jpg')

spitem2 = Item.create!(name: 'Spicy Hot Pot', description: "Napa, beef slices, fish filet, clam, pork aorta imitation crabmeat, tempura, fishball, guangtang beef ball, zucchini, enoki mushroom, black mushroom, potato slices, frozen tofu, fried tofu pufl fried tofu skin, vermicelli, scallion.", price: 19.99, store_id: store7.id)
spitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPSpicy.jpg')
spitem2.photo.attach(io: spitem2_photo, filename: 'SPSpicy.jpg')

spitem3 = Item.create!(name: 'Half & Half', description: "Half Taiwanese and Half Spicy soup base.", price: 14.99, store_id: store7.id)
spitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPHalf&Half.jpg')
spitem3.photo.attach(io: spitem3_photo, filename: 'SPHalf&Half.jpg')

spitem4 = Item.create!(name: 'Beef Slices', price: 10.99, store_id: store7.id)
spitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPBeefAdd.jpg')
spitem4.photo.attach(io: spitem4_photo, filename: 'SPBeefAdd.jpg')

spitem5 = Item.create!(name: 'Pork Slices', price: 7.99, store_id: store7.id)
spitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPPorkAdd.jpg')
spitem5.photo.attach(io: spitem5_photo, filename: 'SPPorkAdd.jpg')

spitem6 = Item.create!(name: 'Lamb Slices', description: "When you can't afford a Cheeseburger.", price: 1.49, store_id: store7.id)
spitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPLambAdd.jpg')
spitem6.photo.attach(io: spitem6_photo, filename: 'SPLambAdd.jpg')

spitem7 = Item.create!(name: 'Enoki Mushrooms', description: "When you can't afford a spChicken.", price: 1.89, store_id: store7.id)
spitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPEnoki.jpg')
spitem7.photo.attach(io: spitem7_photo, filename: 'SPEnoki.jpg')

spitem8 = Item.create!(name: 'Napa Cabbage', description:"The best thing on the menu.", price: 2.89, store_id: store7.id)
spitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPNapa.jpg')
spitem8.photo.attach(io: spitem8_photo, filename: 'SPNapa.jpg')

spitem9 = Item.create!(name: 'Bok Choy', description: "For the health conscious, but still want to eat.",price: 5.99, store_id: store7.id)
spitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPBokChoy.jpg')
spitem9.photo.attach(io: spitem9_photo, filename: 'SPBokChoy.jpg')

spitem10 = Item.create!(name: 'Tofu', price: 2.69, store_id: store7.id)
spitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPTofu.jpg')
spitem10.photo.attach(io: spitem10_photo, filename: 'SPTofu.jpg')

spitem11 = Item.create!(name: 'Fishball', price: 0.99, store_id: store7.id)
spitem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPFishball.jpg')
spitem11.photo.attach(io: spitem11_photo, filename: 'SPFishball.jpg')

spitem12 = Item.create!(name: 'Bean Curd', price: 3.19, store_id: store7.id)
spitem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPBeanCurd.jpg')
spitem12.photo.attach(io: spitem12_photo, filename: 'SPBeanCurd.jpg')

spitem13 = Item.create!(name: 'Assorted Vegetables', price: 1.69, store_id: store7.id)
spitem13_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPAssortedVeg.jpg')
spitem13.photo.attach(io: spitem13_photo, filename: 'SPAssortedVeg.jpg')

spitem14 = Item.create!(name: 'Ramen', price: 1.79, store_id: store7.id)
spitem14_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPRamen.jpg')
spitem14.photo.attach(io: spitem14_photo, filename: 'SPRamen.jpg')

spitem15 = Item.create!(name: 'Thai Tea Boba', price: 4.75, store_id: store7.id)
spitem15_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPThaiTea.jpg')
spitem15.photo.attach(io: spitem15_photo, filename: 'SPThaiTea.jpg')

spitem16 = Item.create!(name: 'Milk Tea Boba', price: 4.75, store_id: store7.id)
spitem16_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SPMilkTea.jpg')
spitem16.photo.attach(io: spitem16_photo, filename: 'SPMilkTea.jpg')


sp_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store7.id)
sp_menu2 = Menu.create!(title: 'Menu', rank: 2, store_id: store7.id)
sp_menu3 = Menu.create!(title: 'Add Ons', rank: 3, store_id: store7.id)
sp_menu4 = Menu.create!(title: 'Milk Tea', rank: 4, store_id: store7.id)

spmenu_item1 = MenuItem.create!(menu_id: sp_menu1.id, item_id: spitem1.id, rank: 1, store_id: store7.id)
spmenu_item2 = MenuItem.create!(menu_id: sp_menu1.id, item_id: spitem2.id, rank: 2, store_id: store7.id)
spmenu_item3 = MenuItem.create!(menu_id: sp_menu1.id, item_id: spitem3.id, rank: 3, store_id: store7.id)
spmenu_item4 = MenuItem.create!(menu_id: sp_menu1.id, item_id: spitem15.id, rank: 4, store_id: store7.id)
spmenu_item5 = MenuItem.create!(menu_id: sp_menu1.id, item_id: spitem16.id, rank: 5, store_id: store7.id)
spmenu_item6 = MenuItem.create!(menu_id: sp_menu2.id, item_id: spitem1.id, rank: 6, store_id: store7.id)
spmenu_item7 = MenuItem.create!(menu_id: sp_menu2.id, item_id: spitem2.id, rank: 7, store_id: store7.id)
spmenu_item8 = MenuItem.create!(menu_id: sp_menu2.id, item_id: spitem3.id, rank: 8, store_id: store7.id)
spmenu_item9 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem4.id, rank: 9, store_id: store7.id)
spmenu_item10 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem5.id, rank: 10, store_id: store7.id)
spmenu_item11 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem6.id, rank: 11, store_id: store7.id)
spmenu_item12 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem7.id, rank: 12, store_id: store7.id)
spmenu_item13 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem8.id, rank: 13, store_id: store7.id)
spmenu_item14 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem9.id, rank: 14, store_id: store7.id)
spmenu_item15 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem10.id, rank: 15, store_id: store7.id)
spmenu_item16 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem11.id, rank: 16, store_id: store7.id)
spmenu_item17 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem12.id, rank: 17, store_id: store7.id)
spmenu_item18 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem13.id, rank: 18, store_id: store7.id)
spmenu_item19 = MenuItem.create!(menu_id: sp_menu3.id, item_id: spitem14.id, rank: 19, store_id: store7.id)
spmenu_item20 = MenuItem.create!(menu_id: sp_menu4.id, item_id: spitem15.id, rank: 20, store_id: store7.id)
spmenu_item21 = MenuItem.create!(menu_id: sp_menu4.id, item_id: spitem16.id, rank: 21, store_id: store7.id)

# Hot Sauce & Panko

hpitem1 = Item.create!(name: 'Chris Wings', price: 6.99, description: 'Chris’s Wing is named after one of our most treasured customers. It started as a “one-off-wing” that we would only run for a week but he insisted that we make it permanent and so we did. It is now one of our best sellers. Thanks Chris.', store_id: store8.id)
hpitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPChris.jpg')
hpitem1.photo.attach(io: hpitem1_photo, filename: 'HPChris.jpg')

hpitem2 = Item.create!(name: 'Naked Wings', description: 'We first brine, then steam our wings which results in a wing that is never dry or over cooked.', price: 5.99, store_id: store8.id)
hpitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPNaked.jpg') 
hpitem2.photo.attach(io: hpitem2_photo, filename: 'HPNaked.jpg')

hpitem3 = Item.create!(name: 'Chase Wings', description: 'Chase came in with a friend and his friend asked for a special request. They were wondering whether we could make a wing with 1/2 Chris’s Honey and 1/2 Hot Buffalo. We said yes. We added it to our menu because it was that good. Thanks Chase.',price: 6.99, store_id: store8.id)
hpitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPChase.jpg')
hpitem3.photo.attach(io: hpitem3_photo, filename: 'HPChase.jpg')

hpitem4 = Item.create!(name: 'Old Bay Wings', price: 7.99, description: 'Old Bay with Sriracha Caramel.',store_id: store8.id)
hpitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPOldBay.jpg')
hpitem4.photo.attach(io: hpitem4_photo, filename: 'HPOldBay.jpg')

hpitem5 = Item.create!(name: 'Thai Sweet Chili Wings', price: 6.99, description: 'Sweet chili.' ,store_id: store8.id)
hpitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPThai.jpg')
hpitem5.photo.attach(io: hpitem5_photo, filename: 'HPThai.jpg')

hpitem6 = Item.create!(name: 'Mango Habanero Wings', price: 6.99, description:'Just Mango and Habanero.', store_id: store8.id)
hpitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPMango.jpg')
hpitem6.photo.attach(io: hpitem6_photo, filename: 'HPMango.jpg')

hpitem7 = Item.create!(name: 'Panko Parmesan Wings', price: 6.99,description: 'This Wing carries our namesake of Panko. It’s breaded with our blend of herbs and spices and a ton of grated Parmesan.', store_id: store8.id)
hpitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPParmesan.jpg')
hpitem7.photo.attach(io: hpitem7_photo, filename: 'HPParmesan.jpg')

hpitem8 = Item.create!(name: 'Korean Wings', price: 6.99, description: 'There are many types of KFC. This one happens to be crusted and coated with our House Gochujang Hot Pepper Sauce.', store_id: store8.id)
hpitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPKorean.jpg')
hpitem8.photo.attach(io: hpitem8_photo, filename: 'HPKorean.jpg')

hpitem9 = Item.create!(name: 'Bacon Wrapped Wings', price: 6.99, description: 'A whole slice of bacon is wrapped around one wing. It is then coated with our Bourbon Molasses Sauce. That is why there is only five wings per serving…in deference to your cholesterol count. WE DO CARE!', store_id: store8.id)
hpitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPBacon.jpg')
hpitem9.photo.attach(io: hpitem9_photo, filename: 'HPBacon.jpg')

hpitem10 = Item.create!(name: 'Satay Wings', price: 6.99, description: 'Satay wings and contains peanuts.', store_id: store8.id)
hpitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPSatay.jpg')
hpitem10.photo.attach(io: hpitem10_photo, filename: 'HPSatay.jpg')

hpitem11 = Item.create!(name: 'Green Wings', price: 6.99, description: 'Cilantro, Jalapeno, Ginger, Sesame Oil and our House Spice Mix.', store_id: store8.id)
hpitem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPGreen.jpg')
hpitem11.photo.attach(io: hpitem11_photo, filename: 'HPGreen.jpg')

hpitem12 = Item.create!(name: 'Panko Cod Fish & Chips', price: 9.99, description: 'Our Cod is breaded with Panko and then fried. Comes with Tempura Wedge Fries, Lime and Tartar Sauce.', store_id: store8.id)
hpitem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPFish.jpg')
hpitem12.photo.attach(io: hpitem12_photo, filename: 'HPFish.jpg')

hpitem13 = Item.create!(name: 'Ultra Goliath Waffle Sandwich', price: 7.99, description: 'Chicken kara-age with cabbage sriracha caramel and sushi sauce.', store_id: store8.id)
hpitem13_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HPGoliath.jpg')
hpitem13.photo.attach(io: hpitem13_photo, filename: 'HPGoliath.jpg')

hp_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store8.id)
hp_menu2 = Menu.create!(title: 'Entrees', rank: 2, store_id: store8.id)
hp_menu3 = Menu.create!(title: 'Wings', rank: 3, store_id: store8.id)

hpmenu_item1 = MenuItem.create!(menu_id: hp_menu1.id, item_id: hpitem1.id, rank: 1, store_id: store8.id)
hpmenu_item2 = MenuItem.create!(menu_id: hp_menu1.id, item_id: hpitem3.id, rank: 2, store_id: store8.id)
hpmenu_item3 = MenuItem.create!(menu_id: hp_menu1.id, item_id: hpitem4.id, rank: 3, store_id: store8.id)
hpmenu_item4 = MenuItem.create!(menu_id: hp_menu1.id, item_id: hpitem6.id, rank: 4, store_id: store8.id)
hpmenu_item5 = MenuItem.create!(menu_id: hp_menu1.id, item_id: hpitem11.id, rank: 5, store_id: store8.id)
hpmenu_item6 = MenuItem.create!(menu_id: hp_menu1.id, item_id: hpitem13.id, rank: 6, store_id: store8.id)
hpmenu_item7 = MenuItem.create!(menu_id: hp_menu2.id, item_id: hpitem1.id, rank: 7, store_id: store8.id)
hpmenu_item8 = MenuItem.create!(menu_id: hp_menu2.id, item_id: hpitem2.id, rank: 8, store_id: store8.id)
hpmenu_item9 = MenuItem.create!(menu_id: hp_menu3.id, item_id: hpitem3.id, rank: 9, store_id: store8.id)
hpmenu_item10 = MenuItem.create!(menu_id: hp_menu3.id, item_id: hpitem4.id, rank: 10, store_id: store8.id)
hpmenu_item11 = MenuItem.create!(menu_id: hp_menu3.id, item_id: hpitem5.id, rank: 11, store_id: store8.id)
hpmenu_item12 = MenuItem.create!(menu_id: hp_menu3.id, item_id: hpitem6.id, rank: 12, store_id: store8.id)
hpmenu_item13 = MenuItem.create!(menu_id: hp_menu3.id, item_id: hpitem7.id, rank: 13, store_id: store8.id)
hpmenu_item14 = MenuItem.create!(menu_id: hp_menu3.id, item_id: hpitem8.id, rank: 14, store_id: store8.id)
hpmenu_item15 = MenuItem.create!(menu_id: hp_menu3.id, item_id: hpitem9.id, rank: 15, store_id: store8.id)
hpmenu_item16 = MenuItem.create!(menu_id: hp_menu3.id, item_id: hpitem10.id, rank: 16, store_id: store8.id)
hpmenu_item17 = MenuItem.create!(menu_id: hp_menu3.id, item_id: hpitem11.id, rank: 17, store_id: store8.id)

# Rooster & Rice
# store9 = Store.find_by(name: "Rooster & Rice")
rritem1 = Item.create!(name: 'The Original', price: 12.95, description: 'Breast and thigh with skin, jasmine white rice.', store_id: store9.id)
rritem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RROriginal.jpg')
rritem1.photo.attach(io: rritem1_photo, filename: 'RROriginal.jpg')

rritem2 = Item.create!(name: 'The Marina', description: 'All breast, skinless, organic brown rice.', price: 13.45, store_id: store9.id)
rritem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RRMarina.jpg') 
rritem2.photo.attach(io: rritem2_photo, filename: 'RRMarina.jpg')

rritem3 = Item.create!(name: 'The Riceless', description: 'Breast or thigh or Both Breast And Thigh and seasonal veggies.',price: 13.45, store_id: store9.id)
rritem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RRRiceless.jpg')
rritem3.photo.attach(io: rritem3_photo, filename: 'RRRiceless.jpg')

rritem4 = Item.create!(name: 'The Vegetarian', price: 10.45, description: 'Organic tofu, brown rice and seasonal veggies.',store_id: store9.id)
rritem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RRVegetarian.jpg')
rritem4.photo.attach(io: rritem4_photo, filename: 'RRVegetarian.jpg')

rritem5 = Item.create!(name: 'The Wangs', price: 8.95, description: 'Crispy chicken wings glazed with our habanero-butter sauce. served w/ cucumbers and carrots.' ,store_id: store9.id)
rritem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/RRWang.jpg')
rritem5.photo.attach(io: rritem5_photo, filename: 'RRWang.jpg')

rritem6 = Item.create!(name: 'Brown Rice', price: 3.00, store_id: store9.id)
rritem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/White.jpg')
rritem6.photo.attach(io: rritem6_photo, filename: 'White.jpg')

rritem7 = Item.create!(name: 'Chicken Rice', price: 3.00, store_id: store9.id)
rritem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/White.jpg')
rritem7.photo.attach(io: rritem7_photo, filename: 'White.jpg')

rritem8 = Item.create!(name: 'Egg Soft Poached', price: 2.00, store_id: store9.id)
rritem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/White.jpg')
rritem8.photo.attach(io: rritem8_photo, filename: 'White.jpg')

rritem9 = Item.create!(name: 'Extra Breast', price: 4.00, store_id: store9.id)
rritem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/White.jpg')
rritem9.photo.attach(io: rritem9_photo, filename: 'White.jpg')

rritem10 = Item.create!(name: 'Extra Thigh', price: 4.00, store_id: store9.id)
rritem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/White.jpg')
rritem10.photo.attach(io: rritem10_photo, filename: 'White.jpg')

rritem11 = Item.create!(name: 'Extra Chicken Broth', price: 2.00, store_id: store9.id)
rritem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/White.jpg')
rritem11.photo.attach(io: rritem11_photo, filename: 'White.jpg')

rritem12 = Item.create!(name: 'Veggies', price: 2.00, store_id: store9.id)
rritem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/White.jpg')
rritem12.photo.attach(io: rritem12_photo, filename: 'White.jpg')

rritem13 = Item.create!(name: 'Mango Pudding Rice', price: 5.45, store_id: store9.id)
rritem13_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/White.jpg')
rritem13.photo.attach(io: rritem13_photo, filename: 'White.jpg')

rr_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store9.id)
rr_menu2 = Menu.create!(title: 'Khao Mun Gai', rank: 2, store_id: store9.id)
rr_menu3 = Menu.create!(title: 'Appetizers', rank: 3, store_id: store9.id)
rr_menu4 = Menu.create!(title: 'Extras', rank: 4, store_id: store9.id)

rrmenu_item1 = MenuItem.create!(menu_id: rr_menu1.id, item_id: rritem1.id, rank: 1, store_id: store9.id)
rrmenu_item2 = MenuItem.create!(menu_id: rr_menu1.id, item_id: rritem2.id, rank: 2, store_id: store9.id)
rrmenu_item3 = MenuItem.create!(menu_id: rr_menu1.id, item_id: rritem5.id, rank: 3, store_id: store9.id)
rrmenu_item4 = MenuItem.create!(menu_id: rr_menu1.id, item_id: rritem13.id, rank: 4, store_id: store9.id)
rrmenu_item5 = MenuItem.create!(menu_id: rr_menu1.id, item_id: rritem3.id, rank: 5, store_id: store9.id)
rrmenu_item6 = MenuItem.create!(menu_id: rr_menu1.id, item_id: rritem4.id, rank: 6, store_id: store9.id)
rrmenu_item7 = MenuItem.create!(menu_id: rr_menu1.id, item_id: rritem8.id, rank: 7, store_id: store9.id)
rrmenu_item8 = MenuItem.create!(menu_id: rr_menu2.id, item_id: rritem1.id, rank: 8, store_id: store9.id)
rrmenu_item9 = MenuItem.create!(menu_id: rr_menu2.id, item_id: rritem2.id, rank: 9, store_id: store9.id)
rrmenu_item10 = MenuItem.create!(menu_id: rr_menu2.id, item_id: rritem3.id, rank: 10, store_id: store9.id)
rrmenu_item11 = MenuItem.create!(menu_id: rr_menu2.id, item_id: rritem4.id, rank: 11, store_id: store9.id)
rrmenu_item12 = MenuItem.create!(menu_id: rr_menu3.id, item_id: rritem5.id, rank: 12, store_id: store9.id)
rrmenu_item13 = MenuItem.create!(menu_id: rr_menu3.id, item_id: rritem13.id, rank: 13, store_id: store9.id)
rrmenu_item14 = MenuItem.create!(menu_id: rr_menu4.id, item_id: rritem6.id, rank: 14, store_id: store9.id)
rrmenu_item15 = MenuItem.create!(menu_id: rr_menu4.id, item_id: rritem7.id, rank: 15, store_id: store9.id)
rrmenu_item16 = MenuItem.create!(menu_id: rr_menu4.id, item_id: rritem8.id, rank: 16, store_id: store9.id)
rrmenu_item17 = MenuItem.create!(menu_id: rr_menu4.id, item_id: rritem9.id, rank: 17, store_id: store9.id)
rrmenu_item18 = MenuItem.create!(menu_id: rr_menu4.id, item_id: rritem10.id, rank: 18, store_id: store9.id)
rrmenu_item19 = MenuItem.create!(menu_id: rr_menu4.id, item_id: rritem11.id, rank: 19, store_id: store9.id)
rrmenu_item20 = MenuItem.create!(menu_id: rr_menu4.id, item_id: rritem12.id, rank: 20, store_id: store9.id)

# Zen
# store10 = Store.find_by(name: "Zen Modern Asian Bistro")
zitem1 = Item.create!(name: 'Crispy Tofu', price: 6.99, description: 'Beancurd tofu sauteed with a mild sweet red mandarin sauce and garnished with scallions.', store_id: store10.id)
zitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZCrispy.jpg')
zitem1.photo.attach(io: zitem1_photo, filename: 'ZCrispy.jpg')

zitem2 = Item.create!(name: 'Pork Belly Quesadilla', description: 'Sliced pork belly with cheese, hoisin sauce, cilantro, scallions, onions.', price: 8.99, store_id: store10.id)
zitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZQuesadilla.jpg') 
zitem2.photo.attach(io: zitem2_photo, filename: 'ZQuesadilla.jpg')

zitem3 = Item.create!(name: 'Taiwanese Steak Satay', description: 'Grilled steak skewers, mushrooms, garlic, onions, and Taiwanese red wine sauce.', price: 6.99, store_id: store10.id)
zitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZSatay.jpg')
zitem3.photo.attach(io: zitem3_photo, filename: 'ZSatay.jpg')

zitem4 = Item.create!(name: 'Spicy Wontons', price: 5.99, description: 'Homemade wontons filled with pork, green onions, ginger, and served with homemade chili oil.', store_id: store10.id)
zitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZWonton.jpg')
zitem4.photo.attach(io: zitem4_photo, filename: 'ZWonton.jpg')

zitem5 = Item.create!(name: 'Pad Thai', price: 11.49, description: 'Certified Angus Beef, bean sprouts, scallions, onions, peanuts, thin flat thai noodles.', store_id: store10.id)
zitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZPad.jpg')
zitem5.photo.attach(io: zitem5_photo, filename: 'ZPad.jpg')

zitem6 = Item.create!(name: 'K.O. Noodles', price: 11.49, description: 'Crispy double-pan fried noodles, bean sprouts, cabbage, broccoli, mushrooms, bamboo shoots, bok choy, onions, carrots, soy sauce.', store_id: store10.id)
zitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZKO.jpg')
zitem6.photo.attach(io: zitem6_photo, filename: 'ZKO.jpg')

zitem7 = Item.create!(name: 'Taiwanese Beef Noodle Soup', price: 11.99, description: 'Taiwanese noodles, braised beef, bok choy, cilantro, scallions, in a homemade spiced beef broth.', store_id: store10.id)
zitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZTWB.jpg')
zitem7.photo.attach(io: zitem7_photo, filename: 'ZTWB.jpg')

zitem8 = Item.create!(name: 'Spicy Udon Noodle Soup', price: 11.99, description: 'Spicy udon noodles, bok choy, poached egg, scallions.', store_id: store10.id)
zitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZUdon.jpg')
zitem8.photo.attach(io: zitem8_photo, filename: 'ZUdon.jpg')

zitem9 = Item.create!(name: 'After Hours Roll', price: 12.99, description: 'Tempura shrimp, avocado, cucumber, spicy crab, eel sauce.', store_id: store10.id)
zitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZAfter.jpg')
zitem9.photo.attach(io: zitem9_photo, filename: 'ZAfter.jpg')

zitem10 = Item.create!(name: 'North Shore Roll', price: 12.99, description: 'Torched big eye tuna, crab, tempura shrimp, garlic ponzu, torched miso mayonnaise, eel sauce.', store_id: store10.id)
zitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZNorthShore.jpg')
zitem10.photo.attach(io: zitem10_photo, filename: 'ZNorthShore.jpg')

zitem11 = Item.create!(name: 'Fiesta Roll', price: 12.99, description: 'Scottish salmon, crab, cucumber, cilantro, lemon, ponzu, mustard dressing.', store_id: store10.id)
zitem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZFiesta.jpg')
zitem11.photo.attach(io: zitem11_photo, filename: 'ZFiesta.jpg')

zitem12 = Item.create!(name: 'Coronado Roll', price: 12.99, description: 'Butterfish, spicy crab, cucumber, scallions, garlic ponzu.', store_id: store10.id)
zitem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZCoronado.jpg')
zitem12.photo.attach(io: zitem12_photo, filename: 'ZCoronado.jpg')

zitem13 = Item.create!(name: 'Aztec Roll', price: 5.45, description: 'Tempura shrimp, crab, spicy tuna, crunchy flakes, spicy mayo, eel sauce.', store_id: store10.id)
zitem13_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZAztec.jpg')
zitem13.photo.attach(io: zitem13_photo, filename: 'ZAztec.jpg')

zitem14 = Item.create!(name: 'Always Well Roll', price: 5.45, description: 'Cucumber wrap, crab, soy paper,tuna, salmon, yellowtail, masago ponzu, mustard seed dressing.', store_id: store10.id)
zitem14_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZWell.jpg')
zitem14.photo.attach(io: zitem14_photo, filename: 'ZWell.jpg')

zitem15 = Item.create!(name: '911 Roll', price: 5.45, description: 'Big eye tuna, spicy tuna, japalenos, crab, avocado, spicy mayo, red sauce, chili oil.', store_id: store10.id)
zitem15_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Z911.jpg')
zitem15.photo.attach(io: zitem15_photo, filename: 'Z911.jpg')

zitem16 = Item.create!(name: 'Great Wall Roll', price: 5.45, description: 'Tempura shrimp, cream cheese, cucumber, scottish salmon, avocado, eel sauce.', store_id: store10.id)
zitem16_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/ZWall.jpg')
zitem16.photo.attach(io: zitem16_photo, filename: 'ZWall.jpg')

z_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store10.id)
z_menu2 = Menu.create!(title: 'Tapas', rank: 2, store_id: store10.id)
z_menu3 = Menu.create!(title: 'Noodles & Noodle Soups', rank: 3, store_id: store10.id)
z_menu4 = Menu.create!(title: 'Specialty Sushi', rank: 4, store_id: store10.id)

zmenu_item1 = MenuItem.create!(menu_id: z_menu1.id, item_id: zitem1.id, rank: 1, store_id: store10.id)
zmenu_item2 = MenuItem.create!(menu_id: z_menu1.id, item_id: zitem2.id, rank: 2, store_id: store10.id)
zmenu_item3 = MenuItem.create!(menu_id: z_menu1.id, item_id: zitem5.id, rank: 3, store_id: store10.id)
zmenu_item4 = MenuItem.create!(menu_id: z_menu1.id, item_id: zitem13.id, rank: 4, store_id: store10.id)
zmenu_item5 = MenuItem.create!(menu_id: z_menu1.id, item_id: zitem3.id, rank: 5, store_id: store10.id)
zmenu_item6 = MenuItem.create!(menu_id: z_menu1.id, item_id: zitem4.id, rank: 6, store_id: store10.id)
zmenu_item7 = MenuItem.create!(menu_id: z_menu1.id, item_id: zitem8.id, rank: 7, store_id: store10.id)
zmenu_item8 = MenuItem.create!(menu_id: z_menu2.id, item_id: zitem1.id, rank: 8, store_id: store10.id)
zmenu_item9 = MenuItem.create!(menu_id: z_menu2.id, item_id: zitem2.id, rank: 9, store_id: store10.id)
zmenu_item10 = MenuItem.create!(menu_id: z_menu2.id, item_id: zitem3.id, rank: 10, store_id: store10.id)
zmenu_item11 = MenuItem.create!(menu_id: z_menu2.id, item_id: zitem4.id, rank: 11, store_id: store10.id)
zmenu_item12 = MenuItem.create!(menu_id: z_menu3.id, item_id: zitem5.id, rank: 12, store_id: store10.id)
zmenu_item13 = MenuItem.create!(menu_id: z_menu3.id, item_id: zitem6.id, rank: 13, store_id: store10.id)
zmenu_item14 = MenuItem.create!(menu_id: z_menu3.id, item_id: zitem7.id, rank: 14, store_id: store10.id)
zmenu_item15 = MenuItem.create!(menu_id: z_menu3.id, item_id: zitem8.id, rank: 15, store_id: store10.id)
zmenu_item16 = MenuItem.create!(menu_id: z_menu4.id, item_id: zitem9.id, rank: 16, store_id: store10.id)
zmenu_item17 = MenuItem.create!(menu_id: z_menu4.id, item_id: zitem10.id, rank: 17, store_id: store10.id)
zmenu_item18 = MenuItem.create!(menu_id: z_menu4.id, item_id: zitem11.id, rank: 18, store_id: store10.id)
zmenu_item19 = MenuItem.create!(menu_id: z_menu4.id, item_id: zitem12.id, rank: 19, store_id: store10.id)
zmenu_item20 = MenuItem.create!(menu_id: z_menu4.id, item_id: zitem13.id, rank: 20, store_id: store10.id)
zmenu_item21 = MenuItem.create!(menu_id: z_menu4.id, item_id: zitem14.id, rank: 21, store_id: store10.id)
zmenu_item22 = MenuItem.create!(menu_id: z_menu4.id, item_id: zitem15.id, rank: 22, store_id: store10.id)
zmenu_item23 = MenuItem.create!(menu_id: z_menu4.id, item_id: zitem16.id, rank: 23, store_id: store10.id)

# Delfina

store12 = Store.create!(name:'Delfina',address: '3611 18th St, San Francisco, CA 94110', hours: ['4:00PM - 9:00PM'], description: 'Relaxed urban pizza joint with some al fresco tables & an Italian wine selection.', status: 1, coordinate: '(37.761589, -122.424782)', rating: 4.6, rating_count: 1782, price_rating: '$$$')
store12_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Delfina1.jpg')
store12_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/Delfina2.jpg')
store12.photos.attach(io: store12_photo1, filename: 'Delfina1.jpg')
store12.photos.attach(io: store12_photo2, filename: 'Delfina2.jpg')

store_filter38 = StoreFilter.create!(store_id: store12.id, filter_id: filter20.id)
store_filter39 = StoreFilter.create!(store_id: store12.id, filter_id: filter21.id)

deitem1 = Item.create!(name: 'Margherita', price: 17.60, description: 'Tomato, fior di latte mozzarella, basil.', store_id: store12.id)
deitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DEMargherita.jpg')
deitem1.photo.attach(io: deitem1_photo, filename: 'DEMargherita.jpg')

deitem2 = Item.create!(name: 'Panna', description: 'Tomato sauce, cream, basil, shaved parmigianos.', price: 16.50, store_id: store12.id)
deitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DEPanna.jpg') 
deitem2.photo.attach(io: deitem2_photo, filename: 'DEPanna.jpg')

deitem3 = Item.create!(name: 'Clam Pie', description: 'Maine surf clams, tomato, oregano, pecorino, hot peppers.', price: 23.10, store_id: store12.id)
deitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DEClam.jpg')
deitem3.photo.attach(io: deitem3_photo, filename: 'DEClam.jpg')

deitem4 = Item.create!(name: 'Salsiccia', price: 20.35, description: 'Housemade fennel sausage, tomato, bell peppers, onions, mozzarella.', store_id: store12.id)
deitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DESalsiccia.jpg')
deitem4.photo.attach(io: deitem4_photo, filename: 'DESalsiccia.jpg')

deitem5 = Item.create!(name: 'Broccoli Raab', price: 19.55, description: 'Broccoli raab, caciocavallo, olives, hot peppers.', store_id: store12.id)
deitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DEBroccoliRaab.jpg')
deitem5.photo.attach(io: deitem5_photo, filename: 'DEBroccoliRaab.jpg')

deitem6 = Item.create!(name: 'Carbonara', price: 21.75, description: 'Guanciale, 2 farm egg, pecorino, scallions, black pepper.', store_id: store12.id)
deitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DECarbonara.jpg')
deitem6.photo.attach(io: deitem6_photo, filename: 'DECarbonara.jpg')

deitem7 = Item.create!(name: 'Pesto Pie', price: 25.30, description: 'Basil pesto, new potatoes, pecorino, burrata.', store_id: store12.id)
deitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DEPesto.jpg')
deitem7.photo.attach(io: deitem7_photo, filename: 'DEPesto.jpg')

deitem8 = Item.create!(name: 'Prosciutto Pie', price: 20.35, description: 'Prosciutto di parma, caciocavallo, mozzarella, panna, arugula.', store_id: store12.id)
deitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DEProsciutto.jpg')
deitem8.photo.attach(io: deitem8_photo, filename: 'DEProsciutto.jpg')

deitem9 = Item.create!(name: 'Funghi', price: 23.90, description: 'Hen of the woods mushrooms, panna, fontina, and nepitella.', store_id: store12.id)
deitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DEFunghi.jpg')
deitem9.photo.attach(io: deitem9_photo, filename: 'DEFunghi.jpg')

deitem10 = Item.create!(name: 'Insalata Tricolore', price: 14.30, description: 'Arugula, radicchio, endive, lemon vinaigrette, grana padano.', store_id: store12.id)
deitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DETricolore.jpg')
deitem10.photo.attach(io: deitem10_photo, filename: 'DETricolore.jpg')

deitem11 = Item.create!(name: 'Nectarine Salad', price: 16.50, description: 'Belfiore ricotta, toasted hazelnut salsa, purslane.', store_id: store12.id)
deitem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DENectarine.jpg')
deitem11.photo.attach(io: deitem11_photo, filename: 'DENectarine.jpg')

deitem12 = Item.create!(name: 'Little Gem Lettuce', price: 15.40, description: 'Green goddess dressing, avocado, pistachios.', store_id: store12.id)
deitem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DELettuce.jpg')
deitem12.photo.attach(io: deitem12_photo, filename: 'DELettuce.jpg')

deitem13 = Item.create!(name: 'Warm Citrus and Herb Marinated Olives', price: 7.45, store_id: store12.id)
deitem13_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DEOlives.jpg')
deitem13.photo.attach(io: deitem13_photo, filename: 'DEOlives.jpg')

deitem14 = Item.create!(name: 'Saffron Arancini', price: 9.90, description: 'Risotto-mozzarella fritters.', store_id: store12.id)
deitem14_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/DEArancini.jpg')
deitem14.photo.attach(io: deitem14_photo, filename: 'DEArancini.jpg')

de_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store12.id)
de_menu2 = Menu.create!(title: 'Salads', rank: 2, store_id: store12.id)
de_menu3 = Menu.create!(title: 'Antipasti', rank: 3, store_id: store12.id)
de_menu4 = Menu.create!(title: 'Red Pies', rank: 4, store_id: store12.id)
de_menu5 = Menu.create!(title: 'White Pies', rank: 5, store_id: store12.id)

demenu_item1 = MenuItem.create!(menu_id: de_menu1.id, item_id: deitem1.id, rank: 1, store_id: store12.id)
demenu_item2 = MenuItem.create!(menu_id: de_menu1.id, item_id: deitem8.id, rank: 2, store_id: store12.id)
demenu_item3 = MenuItem.create!(menu_id: de_menu1.id, item_id: deitem5.id, rank: 3, store_id: store12.id)
demenu_item4 = MenuItem.create!(menu_id: de_menu1.id, item_id: deitem4.id, rank: 4, store_id: store12.id)

demenu_item5 = MenuItem.create!(menu_id: de_menu2.id, item_id: deitem10.id, rank: 5, store_id: store12.id)
demenu_item6 = MenuItem.create!(menu_id: de_menu2.id, item_id: deitem11.id, rank: 6, store_id: store12.id)
demenu_item7 = MenuItem.create!(menu_id: de_menu2.id, item_id: deitem12.id, rank: 7, store_id: store12.id)
demenu_item8 = MenuItem.create!(menu_id: de_menu3.id, item_id: deitem13.id, rank: 8, store_id: store12.id)
demenu_item9 = MenuItem.create!(menu_id: de_menu3.id, item_id: deitem14.id, rank: 9, store_id: store12.id)
demenu_item10 = MenuItem.create!(menu_id: de_menu4.id, item_id: deitem1.id, rank: 10, store_id: store12.id)
demenu_item11 = MenuItem.create!(menu_id: de_menu4.id, item_id: deitem2.id, rank: 11, store_id: store12.id)
demenu_item12 = MenuItem.create!(menu_id: de_menu4.id, item_id: deitem3.id, rank: 12, store_id: store12.id)
demenu_item13 = MenuItem.create!(menu_id: de_menu4.id, item_id: deitem4.id, rank: 13, store_id: store12.id)
demenu_item14 = MenuItem.create!(menu_id: de_menu5.id, item_id: deitem5.id, rank: 14, store_id: store12.id)
demenu_item15 = MenuItem.create!(menu_id: de_menu5.id, item_id: deitem6.id, rank: 15, store_id: store12.id)
demenu_item16 = MenuItem.create!(menu_id: de_menu5.id, item_id: deitem7.id, rank: 16, store_id: store12.id)
demenu_item17 = MenuItem.create!(menu_id: de_menu5.id, item_id: deitem8.id, rank: 17, store_id: store12.id)
demenu_item18 = MenuItem.create!(menu_id: de_menu5.id, item_id: deitem9.id, rank: 18, store_id: store12.id)

# Halal Guys

store13 = Store.create!(name:'Halal Guys',address: '336 OFarrell St, San Francisco, CA 94102', hours: ['10:00AM - 9:30PM'], description: 'Offshoot of a famed food cart serving gyros, falafel, chicken platters & other Middle Eastern eats.', status: 1, coordinate: '(37.786180, -122.410370)', rating: 4.7, rating_count: 2083, price_rating: '$$')
store13_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGCombo.jpg')
store13_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGChicken.jpg')
store13.photos.attach(io: store13_photo1, filename: 'HGCombo.jpg')
store13.photos.attach(io: store13_photo2, filename: 'HGChicken.jpg')

store_filter38 = StoreFilter.create!(store_id: store13.id, filter_id: filter12.id)
store_filter39 = StoreFilter.create!(store_id: store13.id, filter_id: filter17.id)

hgitem1 = Item.create!(name: 'Combo Platter(Chicken & Gyro)', price: 13.99, description: 'Our world-famous platters start with salad (lettuce and tomato), rice and our juicy protein (chicken and beef gyro). Includes two white sauce packets and one hot sauce packet.', store_id: store13.id)
hgitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGCombo.jpg')
hgitem1.photo.attach(io: hgitem1_photo, filename: 'HGCombo.jpg')

hgitem2 = Item.create!(name: 'Gyro Platter', description: 'Our world-famous platters start with salad (lettuce and tomato), rice, and our juicy protein beef gyro. Includes two white sauce packets and one hot sauce packet.', price: 13.99, store_id: store13.id)
hgitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGGyro.jpg') 
hgitem2.photo.attach(io: hgitem2_photo, filename: 'HGGyro.jpg')

hgitem3 = Item.create!(name: 'Chicken Platter', description: 'Our world-famous platters start with salad (lettuce and tomato), rice, and our juicy protein chicken. Includes two white sauce packets and one hot sauce packet.', price: 13.99, store_id: store13.id)
hgitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGChicken.jpg')
hgitem3.photo.attach(io: hgitem3_photo, filename: 'HGChicken.jpg')

hgitem4 = Item.create!(name: 'Combo Sandwich', price: 10.99, description: 'Served on a warm pita with chicken and beef gyro and topped with shredded iceberg lettuce and chopped tomato. Includes one white sauce packet and one hot sauce packet.', store_id: store13.id)
hgitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGComboSand.jpg')
hgitem4.photo.attach(io: hgitem4_photo, filename: 'HGComboSand.jpg')

hgitem5 = Item.create!(name: 'Chicken Sandwich', price: 10.99, description: 'Served on a warm pita with chicken and topped with shredded iceberg lettuce and chopped tomato. Includes one white sauce packet and one hot sauce packet.', store_id: store13.id)
hgitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGChickenSand.jpg')
hgitem5.photo.attach(io: hgitem5_photo, filename: 'HGChickenSand.jpg')

hgitem6 = Item.create!(name: 'Gyro(Beef) Sandwich', price: 10.99, description: 'Served on a warm pita with gyro and topped with shredded iceberg lettuce and chopped tomato. Includes one white sauce packet and one hot sauce packet.', store_id: store13.id)
hgitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGGyroSand.jpg')
hgitem6.photo.attach(io: hgitem6_photo, filename: 'HGGyroSand.jpg')

hgitem7 = Item.create!(name: 'Falafel Sandwich', price: 10.99, description: 'Served on a warm pita with falafel and topped with shredded iceberg lettuce and chopped tomato. Includes one white sauce packet and one hot sauce packet.', store_id: store13.id)
hgitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGFalafelSand.jpg')
hgitem7.photo.attach(io: hgitem7_photo, filename: 'HGFalafelSand.jpg')

hgitem8 = Item.create!(name: 'Falafel', price: 2.99, description: '2 pieces.', store_id: store13.id)
hgitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGFalafelSide.jpg')
hgitem8.photo.attach(io: hgitem8_photo, filename: 'HGFalafelSide.jpg')

hgitem9 = Item.create!(name: 'Baba Ghanoush', price: 5.99, description: '8 oz serving roasted eggplant dip with two whole pieces of pita.', store_id: store13.id)
hgitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGBaba.jpg')
hgitem9.photo.attach(io: hgitem9_photo, filename: 'HGBaba.jpg')

hgitem10 = Item.create!(name: 'Hummus', price: 5.99, description: '8 oz of hummus with two whole pieces of pita.', store_id: store13.id)
hgitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/HGHummus.jpg')
hgitem10.photo.attach(io: hgitem10_photo, filename: 'HGHummus.jpg')

hg_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store13.id)
hg_menu2 = Menu.create!(title: 'Platters', rank: 2, store_id: store13.id)
hg_menu3 = Menu.create!(title: 'Sandwiches', rank: 3, store_id: store13.id)
hg_menu4 = Menu.create!(title: 'Sides', rank: 4, store_id: store13.id)

hgmenu_item1 = MenuItem.create!(menu_id: hg_menu1.id, item_id: hgitem1.id, rank: 1, store_id: store13.id)
hgmenu_item2 = MenuItem.create!(menu_id: hg_menu1.id, item_id: hgitem2.id, rank: 2, store_id: store13.id)
hgmenu_item3 = MenuItem.create!(menu_id: hg_menu1.id, item_id: hgitem3.id, rank: 3, store_id: store13.id)
hgmenu_item4 = MenuItem.create!(menu_id: hg_menu2.id, item_id: hgitem1.id, rank: 4, store_id: store13.id)
hgmenu_item5 = MenuItem.create!(menu_id: hg_menu2.id, item_id: hgitem2.id, rank: 5, store_id: store13.id)
hgmenu_item6 = MenuItem.create!(menu_id: hg_menu2.id, item_id: hgitem3.id, rank: 6, store_id: store13.id)
hgmenu_item7 = MenuItem.create!(menu_id: hg_menu3.id, item_id: hgitem4.id, rank: 7, store_id: store13.id)
hgmenu_item8 = MenuItem.create!(menu_id: hg_menu3.id, item_id: hgitem5.id, rank: 8, store_id: store13.id)
hgmenu_item9 = MenuItem.create!(menu_id: hg_menu3.id, item_id: hgitem6.id, rank: 9, store_id: store13.id)
hgmenu_item10 = MenuItem.create!(menu_id: hg_menu3.id, item_id: hgitem7.id, rank: 10, store_id: store13.id)
hgmenu_item11 = MenuItem.create!(menu_id: hg_menu4.id, item_id: hgitem8.id, rank: 11, store_id: store13.id)
hgmenu_item12 = MenuItem.create!(menu_id: hg_menu4.id, item_id: hgitem9.id, rank: 12, store_id: store13.id)
hgmenu_item13 = MenuItem.create!(menu_id: hg_menu4.id, item_id: hgitem10.id, rank: 13, store_id: store13.id)

# Saison Smokehouse

store14 = Store.create!(name:'Saison Smokehouse',address: '132 The Embarcadero, San Francisco, CA 94105', hours: ['11:30AM - 8:00PM'], description: 'Michelin-starred Angler and Michelin two-star Saison have joined forces to smoke some chicken, brisket, ribs and more.', status: 1, coordinate: '(37.793091, -122.392212)', rating: 4.5, rating_count: 15, price_rating: '$$$')
store14_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSGold.jpg')
store14_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSPorkRibs.jpg')
store14.photos.attach(io: store14_photo1, filename: 'SSGold.jpg')
store14.photos.attach(io: store14_photo2, filename: 'SSPorkRibs.jpg')

store_filter40 = StoreFilter.create!(store_id: store14.id, filter_id: filter7.id)

ssitem1 = Item.create!(name: 'Red Meal', price: 75.00, description: 'Choice of two meats and a side, served with biscuits, honey butter, pickles and cabbage slaw. Choice of sauce, and Two Embered Caramel Frostys.', store_id: store14.id)
ssitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSRed.jpg')
ssitem1.photo.attach(io: ssitem1_photo, filename: 'SSRed.jpg')

ssitem2 = Item.create!(name: 'Gold Meal', description: 'Comes with 1/2 Whole Roasted Chicken, 1/2 Rack Spice Rubbed Pork Ribs, and 1 lb. Pastrami Brisket. Choice of two sides, served with biscuits, honey butter, pickles and cabbage slaw. choice of two sauces, and four Embered Caramel Frostys.', price: 140.00, store_id: store14.id)
ssitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSGold.jpg') 
ssitem2.photo.attach(io: ssitem2_photo, filename: 'SSGold.jpg')

ssitem3 = Item.create!(name: 'Pastrami Brisket', description: '', price: 20.00, store_id: store14.id)
ssitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSBrisket.jpg')
ssitem3.photo.attach(io: ssitem3_photo, filename: 'SSBrisket.jpg')

ssitem4 = Item.create!(name: 'Spice-Rubbed Pork Ribs', price: 26.00, description: 'Half-Rack.', store_id: store14.id)
ssitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSPorkRibs.jpg')
ssitem4.photo.attach(io: ssitem4_photo, filename: 'SSPorkRibs.jpg')

ssitem5 = Item.create!(name: 'Grandmas Buttermilk Biscuits and Honey Butter', price: 6.00, description: '', store_id: store14.id)
ssitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSBiscuits.jpg')
ssitem5.photo.attach(io: ssitem5_photo, filename: 'SSBiscuits.jpg')

ssitem6 = Item.create!(name: 'Cabbage Slaw with Wild Fennel Vinegar', price: 5.00, description: '', store_id: store14.id)
ssitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSSlaw.jpg')
ssitem6.photo.attach(io: ssitem6_photo, filename: 'SSSlaw.jpg')

ssitem7 = Item.create!(name: 'Orecchiette Mac and Wine Country Cheeses', price: 7.00, description: '', store_id: store14.id)
ssitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSMac.jpg')
ssitem7.photo.attach(io: ssitem7_photo, filename: 'SSMac.jpg')

ssitem8 = Item.create!(name: 'Braised Collard Greens with Country Ham Hocks', price: 6.00, description: '2 pieces.', store_id: store14.id)
ssitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSGreens.jpg')
ssitem8.photo.attach(io: ssitem8_photo, filename: 'SSGreens.jpg')

ssitem9 = Item.create!(name: 'Potato Salad', price: 6.00, description: '', store_id: store14.id)
ssitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSPotatoSalad.jpg')
ssitem9.photo.attach(io: ssitem9_photo, filename: 'SSPotatoSalad.jpg')

ssitem10 = Item.create!(name: 'Barbecue Rancho Gordo Beans', price: 6.00, description: '', store_id: store14.id)
ssitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/SSBeans.jpg')
ssitem10.photo.attach(io: ssitem10_photo, filename: 'SSBeans.jpg')

ss_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store14.id)
ss_menu2 = Menu.create!(title: 'Chef Meals', rank: 2, store_id: store14.id)
ss_menu3 = Menu.create!(title: 'Barbeque', rank: 3, store_id: store14.id)
ss_menu4 = Menu.create!(title: 'Sides', rank: 4, store_id: store14.id)

ssmenu_item1 = MenuItem.create!(menu_id: ss_menu1.id, item_id: ssitem3.id, rank: 1, store_id: store14.id)
ssmenu_item2 = MenuItem.create!(menu_id: ss_menu1.id, item_id: ssitem4.id, rank: 2, store_id: store14.id)
ssmenu_item3 = MenuItem.create!(menu_id: ss_menu1.id, item_id: ssitem7.id, rank: 3, store_id: store14.id)
ssmenu_item4 = MenuItem.create!(menu_id: ss_menu2.id, item_id: ssitem1.id, rank: 4, store_id: store14.id)
ssmenu_item5 = MenuItem.create!(menu_id: ss_menu2.id, item_id: ssitem2.id, rank: 5, store_id: store14.id)
ssmenu_item6 = MenuItem.create!(menu_id: ss_menu3.id, item_id: ssitem3.id, rank: 6, store_id: store14.id)
ssmenu_item7 = MenuItem.create!(menu_id: ss_menu3.id, item_id: ssitem4.id, rank: 7, store_id: store14.id)
ssmenu_item8 = MenuItem.create!(menu_id: ss_menu4.id, item_id: ssitem5.id, rank: 8, store_id: store14.id)
ssmenu_item9 = MenuItem.create!(menu_id: ss_menu4.id, item_id: ssitem6.id, rank: 9, store_id: store14.id)
ssmenu_item10 = MenuItem.create!(menu_id: ss_menu4.id, item_id: ssitem7.id, rank: 10, store_id: store14.id)
ssmenu_item11 = MenuItem.create!(menu_id: ss_menu4.id, item_id: ssitem8.id, rank: 11, store_id: store14.id)
ssmenu_item12 = MenuItem.create!(menu_id: ss_menu4.id, item_id: ssitem9.id, rank: 12, store_id: store14.id)
ssmenu_item13 = MenuItem.create!(menu_id: ss_menu4.id, item_id: ssitem10.id, rank: 13, store_id: store14.id)

# Tacqueria Los Coyotes

store15 = Store.create!(name:'Tacqueria Los Coyotes',address: '3036 16th St, San Francisco, CA 94103', hours: ['9:30AM - 9:00PM'], description: 'Menu selections range from basic tacos to a California burrito filled with steak, avocado & fries.', status: 1, coordinate: '(37.765470, -122.420440)', rating: 4.7, rating_count: 2174, price_rating: '$$')
store15_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCClassic.jpg')
store15_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCSuperB.jpg')
store15.photos.attach(io: store15_photo1, filename: 'TCClassic.jpg')
store15.photos.attach(io: store15_photo2, filename: 'TCSuperB.jpg')

store_filter41 = StoreFilter.create!(store_id: store15.id, filter_id: filter8.id)
store_filter42 = StoreFilter.create!(store_id: store15.id, filter_id: filter15.id)

tcitem1 = Item.create!(name: 'Classic Eggs Breakfast', price: 10.99, description: 'Spanish rice, refried beans, breakfast taco, and one sunny-side-up egg.', store_id: store15.id)
tcitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCClassic.jpg')
tcitem1.photo.attach(io: tcitem1_photo, filename: 'TCClassic.jpg')

tcitem2 = Item.create!(name: 'Chilaquiles Breakfast', description: 'In green or red sauce.', price: 10.99, store_id: store15.id)
tcitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCChilaquiles.jpg') 
tcitem2.photo.attach(io: tcitem2_photo, filename: 'TCChilaquiles.jpg')

tcitem3 = Item.create!(name: 'Omelette Breakfast', description: 'Carne asada, veggies, rice, beans, and cheesed wrapped in a fluffy 4 egg omelette.', price: 10.99, store_id: store15.id)
tcitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCOmelette.jpg')
tcitem3.photo.attach(io: tcitem3_photo, filename: 'TCOmelette.jpg')

tcitem4 = Item.create!(name: 'Super Breakfast Burrito', price: 10.25, description: 'Eggs, carne asada, rice, beans, cheese, sour cream, guacamole, lettuce, and salsa.', store_id: store15.id)
tcitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCSuperB.jpg')
tcitem4.photo.attach(io: tcitem4_photo, filename: 'TCSuperB.jpg')

tcitem5 = Item.create!(name: 'Mojado Burrito', price: 10.75, description: 'Carne Asada, rice, beans, sour cream, cheese, guacamole, and sauce.', store_id: store15.id)
tcitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCMojado.jpg')
tcitem5.photo.attach(io: tcitem5_photo, filename: 'TCMojado.jpg')

tcitem6 = Item.create!(name: 'Chimichanga Burrito', price: 9.75, description: 'Carne Asada, rice, beans, and sauce. Served without lettuce.', store_id: store15.id)
tcitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCChimichanga.jpg')
tcitem6.photo.attach(io: tcitem6_photo, filename: 'TCChimichanga.jpg')

tcitem7 = Item.create!(name: 'California Burrito', price: 10.75, description: 'Steak, fries, cheese, avocado, and sour cream.', store_id: store15.id)
tcitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCCalifornia.jpg')
tcitem7.photo.attach(io: tcitem7_photo, filename: 'TCCalifornia.jpg')

tcitem8 = Item.create!(name: 'Regular Taco', price: 3.50, description: 'Carnitas, onion, cilantro, and sauce.', store_id: store15.id)
tcitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCTaco.jpg')
tcitem8.photo.attach(io: tcitem8_photo, filename: 'TCTaco.jpg')

tcitem9 = Item.create!(name: 'Regular Crispy Taco', price: 3.75, description: 'Carnitas, onion, cilantro, and sauce.', store_id: store15.id)
tcitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCCrispyTaco.jpg')
tcitem9.photo.attach(io: tcitem9_photo, filename: 'TCCrispyTaco.jpg')

tcitem10 = Item.create!(name: 'Super Flautas', price: 10.95, description: 'Chicken, rice, beans, guacamole, sour cream, cheese, lettuce, and sauce.', store_id: store15.id)
tcitem10_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCFlautas.jpg')
tcitem10.photo.attach(io: tcitem10_photo, filename: 'TCFlautas.jpg')

tcitem11 = Item.create!(name: 'Sopes', price: 4.95, description: 'Carne Asada, beans, cheese, lettuce, sour cream, avocado, and sauce.', store_id: store15.id)
tcitem11_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCSopes.jpg')
tcitem11.photo.attach(io: tcitem11_photo, filename: 'TCSopes.jpg')

tcitem12 = Item.create!(name: 'Pupusas', price: 3.95, description: 'Flatbread made with cornmeal or rice flour and paired with cheese', store_id: store15.id)
tcitem12_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/TCPupusas.jpg')
tcitem12.photo.attach(io: tcitem12_photo, filename: 'TCPupusas.jpg')

tc_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store15.id)
tc_menu2 = Menu.create!(title: 'Breakfast', rank: 2, store_id: store15.id)
tc_menu3 = Menu.create!(title: 'Burritos', rank: 3, store_id: store15.id)
tc_menu4 = Menu.create!(title: 'Tacos', rank: 4, store_id: store15.id)
tc_menu5 = Menu.create!(title: 'Flautas, Sopes, & Pupusas', rank: 5, store_id: store15.id)

tcmenu_item1 = MenuItem.create!(menu_id: tc_menu1.id, item_id: tcitem5.id, rank: 1, store_id: store15.id)
tcmenu_item2 = MenuItem.create!(menu_id: tc_menu1.id, item_id: tcitem7.id, rank: 2, store_id: store15.id)
tcmenu_item3 = MenuItem.create!(menu_id: tc_menu1.id, item_id: tcitem8.id, rank: 3, store_id: store15.id)
tcmenu_item4 = MenuItem.create!(menu_id: tc_menu2.id, item_id: tcitem1.id, rank: 4, store_id: store15.id)
tcmenu_item5 = MenuItem.create!(menu_id: tc_menu2.id, item_id: tcitem2.id, rank: 5, store_id: store15.id)
tcmenu_item6 = MenuItem.create!(menu_id: tc_menu2.id, item_id: tcitem3.id, rank: 6, store_id: store15.id)
tcmenu_item7 = MenuItem.create!(menu_id: tc_menu2.id, item_id: tcitem4.id, rank: 7, store_id: store15.id)
tcmenu_item8 = MenuItem.create!(menu_id: tc_menu3.id, item_id: tcitem5.id, rank: 8, store_id: store15.id)
tcmenu_item9 = MenuItem.create!(menu_id: tc_menu3.id, item_id: tcitem6.id, rank: 9, store_id: store15.id)
tcmenu_item10 = MenuItem.create!(menu_id: tc_menu3.id, item_id: tcitem7.id, rank: 10, store_id: store15.id)
tcmenu_item11 = MenuItem.create!(menu_id: tc_menu4.id, item_id: tcitem8.id, rank: 11, store_id: store15.id)
tcmenu_item12 = MenuItem.create!(menu_id: tc_menu4.id, item_id: tcitem9.id, rank: 12, store_id: store15.id)
tcmenu_item13 = MenuItem.create!(menu_id: tc_menu5.id, item_id: tcitem10.id, rank: 13, store_id: store15.id)
tcmenu_item14 = MenuItem.create!(menu_id: tc_menu5.id, item_id: tcitem11.id, rank: 14, store_id: store15.id)
tcmenu_item15 = MenuItem.create!(menu_id: tc_menu5.id, item_id: tcitem12.id, rank: 15, store_id: store15.id)

# Pa'ina Lounge & Restaurant
# store16 = Store.find_by(name: 'Paina Lounge & Restaurant')
store16 = Store.create!(name:'Paina Lounge & Restaurant',address: '1865 Post St, San Francisco, CA 94115', hours: ['11:00AM - 9:00PM'], description: 'Modern, vibrant eatery with live music serving Hawaiian-style tapas & poke, plus tropical cocktails.', status: 1, coordinate: '(37.783691, -122.444649)', rating: 4.8, rating_count: 240, price_rating: '$$')
store16_photo1= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLPokeBowl.jpg')
store16_photo2= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLPokeParty.jpg')
store16.photos.attach(io: store16_photo1, filename: 'PLPokeBowl.jpg')
store16.photos.attach(io: store16_photo2, filename: 'PLPokeParty.jpg')

# filter2 = Filter.find_by(filter_title: 'Asian')
# filter14 = Filter.find_by(filter_title: 'Poke')

store_filter43 = StoreFilter.create!(store_id: store16.id, filter_id: filter2.id)
store_filter44 = StoreFilter.create!(store_id: store16.id, filter_id: filter14.id)

plitem1 = Item.create!(name: 'Poke Bowl', price: 10.00, description: 'Raw ahi tuna tossed in shoyu, sesame oil, scallions, sweet onions, and Hawaiian sea salt.', store_id: store16.id)
plitem1_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLPokeBowl.jpg')
plitem1.photo.attach(io: plitem1_photo, filename: 'PLPokeBowl.jpg')

plitem2 = Item.create!(name: 'Poke Party', description: 'Raw ahi tuna tossed in shoyu, sesame oil, scallions, sweet onions, and Hawaiian sea salt.', price: 36.00, store_id: store16.id)
plitem2_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLPokeParty.jpg') 
plitem2.photo.attach(io: plitem2_photo, filename: 'PLPokeParty.jpg')

plitem3 = Item.create!(name: 'Spam Musubi', description: 'Rice, teriyaki sauce, nori-furikake, and nori wrap.', price: 5.00, store_id: store16.id)
plitem3_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLSpam.jpg')
plitem3.photo.attach(io: plitem3_photo, filename: 'PLSpam.jpg')

plitem4 = Item.create!(name: 'Kalbi Nachos', price: 9.00, description: 'Marinated beef, citrus-aioli, nacho cheese, serrano, and kimchi.', store_id: store16.id)
plitem4_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLNachos.jpg')
plitem4.photo.attach(io: plitem4_photo, filename: 'PLNachos.jpg')

plitem5 = Item.create!(name: 'Duck Fried Rice', price: 16.00, description: 'Maple leaf duck breast, market vegetables, and fried egg.', store_id: store16.id)
plitem5_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLDFriedRice.jpg')
plitem5.photo.attach(io: plitem5_photo, filename: 'PLDFriedRice.jpg')

plitem6 = Item.create!(name: 'Paina Wings', price: 8.00, description: 'Chili glaze and scallions.', store_id: store16.id)
plitem6_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLWings.jpg')
plitem6.photo.attach(io: plitem6_photo, filename: 'PLWings.jpg')

plitem7 = Item.create!(name: 'Kalua Pig Poutine', price: 10.00, description: 'Braised pork butt, cabbage, beef gravy, fries, queso-fresco, and serrano.', store_id: store16.id)
plitem7_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLPoutine.jpg')
plitem7.photo.attach(io: plitem7_photo, filename: 'PLPoutine.jpg')

plitem8 = Item.create!(name: 'Loco Moco', price: 16.00, description: '6 oz of American wagyu beef, beef gravy, mac salad, and fried egg.', store_id: store16.id)
plitem8_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLLocoMoco.jpg')
plitem8.photo.attach(io: plitem8_photo, filename: 'PLLocoMoco.jpg')

plitem9 = Item.create!(name: 'Kimchi Fried Rice', price: 10.00, description: 'Shoyu, sesame, nori, and fried egg.', store_id: store16.id)
plitem9_photo= open('https://dannydash-seeds.s3.us-west-1.amazonaws.com/PLKFriedRice.jpg')
plitem9.photo.attach(io: plitem9_photo, filename: 'PLKFriedRice.jpg')

pl_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store16.id)
pl_menu2 = Menu.create!(title: 'Poke Bar', rank: 2, store_id: store16.id)
pl_menu3 = Menu.create!(title: 'Shared Supper', rank: 3, store_id: store16.id)

plmenu_item1 = MenuItem.create!(menu_id: pl_menu1.id, item_id: plitem1.id, rank: 1, store_id: store16.id)
plmenu_item2 = MenuItem.create!(menu_id: pl_menu1.id, item_id: plitem2.id, rank: 2, store_id: store16.id)
plmenu_item3 = MenuItem.create!(menu_id: pl_menu1.id, item_id: plitem5.id, rank: 3, store_id: store16.id)
plmenu_item4 = MenuItem.create!(menu_id: pl_menu1.id, item_id: plitem6.id, rank: 4, store_id: store16.id)
plmenu_item5 = MenuItem.create!(menu_id: pl_menu1.id, item_id: plitem9.id, rank: 5, store_id: store16.id)
plmenu_item6 = MenuItem.create!(menu_id: pl_menu1.id, item_id: plitem4.id, rank: 6, store_id: store16.id)
plmenu_item7 = MenuItem.create!(menu_id: pl_menu1.id, item_id: plitem7.id, rank: 7, store_id: store16.id)
plmenu_item8 = MenuItem.create!(menu_id: pl_menu1.id, item_id: plitem3.id, rank: 8, store_id: store16.id)
plmenu_item9 = MenuItem.create!(menu_id: pl_menu2.id, item_id: plitem1.id, rank: 9, store_id: store16.id)
plmenu_item10 = MenuItem.create!(menu_id: pl_menu2.id, item_id: plitem2.id, rank: 10, store_id: store16.id)
plmenu_item11 = MenuItem.create!(menu_id: pl_menu3.id, item_id: plitem3.id, rank: 11, store_id: store16.id)
plmenu_item12 = MenuItem.create!(menu_id: pl_menu3.id, item_id: plitem4.id, rank: 12, store_id: store16.id)
plmenu_item13 = MenuItem.create!(menu_id: pl_menu3.id, item_id: plitem5.id, rank: 13, store_id: store16.id)
plmenu_item14 = MenuItem.create!(menu_id: pl_menu3.id, item_id: plitem6.id, rank: 14, store_id: store16.id)
plmenu_item15 = MenuItem.create!(menu_id: pl_menu3.id, item_id: plitem7.id, rank: 15, store_id: store16.id)
plmenu_item16 = MenuItem.create!(menu_id: pl_menu3.id, item_id: plitem8.id, rank: 16, store_id: store16.id)
plmenu_item17 = MenuItem.create!(menu_id: pl_menu3.id, item_id: plitem9.id, rank: 17, store_id: store16.id)
