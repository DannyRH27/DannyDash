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
store1 = Store.create!(name:'Wok & Go',address: '2700 24th St, San Francisco, CA 94110', hours: ['10:00AM - 11:00PM'], description: 'Best Salt & Pepper Wings in the city', status: 1, coordinate: '(37.7531, -122.4066)', rating: 4.7, rating_count: 315)
store1_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WokGo.jpg')
store1_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WokGo2.jpg') 
store1.photos.attach(io: store1_photo1, filename: 'WokGo.jpg')
store1.photos.attach(io: store1_photo2, filename: 'WokGo2.jpg')

store2 = Store.create!(name:'Marugame Udon',address: '3251 20th Ave 184, San Francisco, CA 94132', hours: ['11:00AM - 10:00PM'], description: 'Hip spot where an array of udon dishes are prepared with noodles hand-pulled in an open kitchen.', status: 1, coordinate: '(37.728180, -122.477020)', rating: 4.6, rating_count: 2184 )
store2_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Udon.jpg')
store2_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Udon2.jpg')
store2.photos.attach(io: store2_photo1, filename: 'Udon.jpg')
store2.photos.attach(io: store2_photo2, filename: 'Udon2.jpg')

store3 = Store.create!(name:'Benu',address: '22 Hawthorne St, San Francisco, CA 94105', hours: ['5:30PM - 8:30PM'], description: 'Minimalist SoMa spot featuring innovative, ultrapricey American cuisine and renowned tasting menu.', status: 1, coordinate: '(37.785461, -122.399048)', rating: 4.9, rating_count: 4281)
store3_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Benu.jpg')
store3_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Benu2.jpg')
store3.photos.attach(io: store3_photo1, filename: 'Benu.jpg')
store3.photos.attach(io: store3_photo2, filename: 'Benu2.jpg')

store4 = Store.create!(name:'Little Szechuan',address: '501 Broadway St, San Francisco, CA 94133', hours: ['11:00AM - 3:00PM'], description: 'Spicy Sichuan dishes, mu shu & Chinese stir-fries are served in a vintage A-frame building.', status: 1, coordinate: '(37.797790, -122.405700)', rating: 4.3, rating_count: 523)
store4_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Szechuan.jpg')
store4_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Szechuan2.jpg')
store4.photos.attach(io: store4_photo1, filename: 'Szechuan.jpg')
store4.photos.attach(io: store4_photo2, filename: 'Szechuan2.jpg')

store5 = Store.create!(name:'Thanh Tam II',address: '577 Valencia St, San Francisco, CA 94110', hours: ['11:15AM - 9:30PM'], description: 'No-frills restaurant with menu featuring over 150 Vietnamese & Southeast Asian dishes.', status: 1, coordinate: '(37.763690, -122.421470)', rating: 4.3, rating_count: 1096)
store5_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/ThanhTam.jpg')
store5_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/ThanhTam2.jpg')
store5.photos.attach(io: store5_photo1, filename: 'ThanhTam.jpg')
store5.photos.attach(io: store5_photo2, filename: 'ThanhTam2.jpg')

store6 = Store.create!(name:'Mcdonalds',address: '302 Potrero Ave, San Francisco, CA 94110', hours: ['5:00AM - 2:00AM'], description: 'Classic, long-running fast-food chain known for its burgers, fries & shakes.', status: 1, coordinate: '(37.748960, -122.404820)', rating: 4.0, rating_count: 4072)
store6_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/McDonalds.jpg')
store6_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Mcdonalds2.jpg')
store6.photos.attach(io: store6_photo1, filename: 'McDonalds.jpg')
store6.photos.attach(io: store6_photo2, filename: 'Mcdonalds2.jpg')

store7 = Store.create!(name:'Seapot',address: '1952 S El Camino Real, San Mateo, CA 94403', hours: ['11:00AM - 9:30PM'], description: 'Spacious & stylish eatery featuring Chinese hot pot tables, plus a conveyor belt of food options.', status: 1, coordinate: '(37.548490, -122.310230)', rating: 4.8, rating_count: 1688)
store7_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Seapot.jpg')
store7_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Seapot2.jpg')
store7.photos.attach(io: store7_photo1, filename: 'Seapot.jpg')
store7.photos.attach(io: store7_photo2, filename: 'Seapot2.jpg')

store8 = Store.create!(name:'Hot Sauce & Panko',address: '1468 Hyde St, San Francisco, CA 94109', hours: ['11:30AM - 7:00PM'], description: 'Tiny outpost for Korean-American comfort food, waffle sandwiches & over 300 hot sauce varieties.', status: 1, coordinate: '(37.794320, -122.418010)', rating: 4.3, rating_count: 945)
store8_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/HotSauce.jpg')
store8_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/HotSauce2.jpg')
store8.photos.attach(io: store8_photo1, filename: 'HotSauce.jpg')
store8.photos.attach(io: store8_photo2, filename: 'HotSauce2.jpg')

store9 = Store.create!(name:'Rooster & Rice',address: '4039 18th St, San Francisco, CA 94114', hours: ['11:00AM - 8:00PM'], description: 'Snug counter-service cafe serving dine-in or take-out khao mun gai (Thai chicken & rice).', status: 1, coordinate: '(37.760780, -122.433650)', rating: 4.5, rating_count: 2056)
store9_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/RoosterRice.jpg')
store9_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/RoosterRice2.jpg')
store9.photos.attach(io: store9_photo1, filename: 'RoosterRice.jpg')
store9.photos.attach(io: store9_photo2, filename: 'RoosterRice2.jpg')

store10 = Store.create!(name:'Zen Modern Asian Bistro',address: '13510 Sabre Springs Pkwy, San Diego, CA 92128', hours: ['10:00AM - 9:00PM'], description: 'Casual counter-serve locale offering Asian fusion, wok-fried dishes & sushi amid basic decor.', status: 1, coordinate: '(32.962670, -117.092020)', rating: 4.6, rating_count: 730)
store10_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Zen.jpg')
store10_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Zen2.jpg')
store10.photos.attach(io: store10_photo1, filename: 'Zen.jpg')
store10.photos.attach(io: store10_photo2, filename: 'Zen2.jpg')

store11 = Store.create!(name:'RI XV',address: '2250 23rd St, San Francisco, CA 94107', hours: ['11:30AM - 9:00PM'], description: 'Bib Gourmand. Home cooking with farm-to-table ingredients', status: 1, coordinate: '(37.754590, -122.402080)', rating: 5.0, rating_count: 11923)
store11_photo1= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/RI1.jpg')
store11_photo2= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/RI2.jpg')
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
filter1_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Convenience.jpg') 
filter1.photo.attach(io: filter1_photo, filename: 'Convenience.jpg')
filter2 = Filter.create!(filter_title: 'Asian')
filter2_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Asian.jpg') 
filter2.photo.attach(io: filter2_photo, filename: 'Asian.jpg')
filter3 = Filter.create!(filter_title: 'Fast Food')
filter3_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Fast+Food.jpg') 
filter3.photo.attach(io: filter3_photo, filename: 'Fast+Food.jpg')
filter4 = Filter.create!(filter_title: 'Burgers')
filter4_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Burgers.jpg') 
filter4.photo.attach(io: filter4_photo, filename: 'Burgers.jpg')
filter5 = Filter.create!(filter_title: 'Healthy')
filter5_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Healthy.jpg') 
filter5.photo.attach(io: filter5_photo, filename: 'Healthy.jpg')
filter6 = Filter.create!(filter_title: 'Chinese')
filter6_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Chinese.jpg') 
filter6.photo.attach(io: filter6_photo, filename: 'Chinese.jpg')
filter7 = Filter.create!(filter_title: 'Barbeque')
filter7_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Barbeque.jpg') 
filter7.photo.attach(io: filter7_photo, filename: 'Barbeque.jpg')
filter8 = Filter.create!(filter_title: 'Breakfast')
filter8_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Breakfast.jpg') 
filter8.photo.attach(io: filter8_photo, filename: 'Breakfast.jpg')
filter9 = Filter.create!(filter_title: 'Thai')
filter9_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Thai.jpg') 
filter9.photo.attach(io: filter9_photo, filename: 'Thai.jpg')
filter10 = Filter.create!(filter_title: 'Sandwiches')
filter10_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Sandwiches.jpg') 
filter10.photo.attach(io: filter10_photo, filename: 'Sandwiches.jpg')
filter11 = Filter.create!(filter_title: 'Chicken')
filter11_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Chicken.jpg') 
filter11.photo.attach(io: filter11_photo, filename: 'Chicken.jpg')
filter12 = Filter.create!(filter_title: 'Halal')
filter12_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Halal.jpg') 
filter12.photo.attach(io: filter12_photo, filename: 'Halal.jpg')
filter13 = Filter.create!(filter_title: 'Korean')
filter13_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Korean.jpg') 
filter13.photo.attach(io: filter13_photo, filename: 'Korean.jpg')
filter14 = Filter.create!(filter_title: 'Poke')
filter14_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Poke.jpg') 
filter14.photo.attach(io: filter14_photo, filename: 'Poke.jpg')
filter15 = Filter.create!(filter_title: 'Mexican')
filter15_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Mexican.jpg') 
filter15.photo.attach(io: filter15_photo, filename: 'Mexican.jpg')
filter16 = Filter.create!(filter_title: 'Vietnamese')
filter16_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Vietnamese.jpg') 
filter16.photo.attach(io: filter16_photo, filename: 'Vietnamese.jpg')
filter17 = Filter.create!(filter_title: 'Greek')
filter17_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Greek.jpg') 
filter17.photo.attach(io: filter17_photo, filename: 'Greek.jpg')
filter18 = Filter.create!(filter_title: 'Japanese')
filter18_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Japanese.jpg') 
filter18.photo.attach(io: filter18_photo, filename: 'Japanese.jpg')
filter19 = Filter.create!(filter_title: 'Sushi')
filter19_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Sushi.jpg') 
filter19.photo.attach(io: filter19_photo, filename: 'Sushi.jpg')
filter20 = Filter.create!(filter_title: 'Italian')
filter20_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Italian.jpg') 
filter20.photo.attach(io: filter20_photo, filename: 'Italian.jpg')
filter21 = Filter.create!(filter_title: 'Pizza')
filter21_photo = open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Pizza.jpg') 
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
store_filter7 = StoreFilter.create!(store_id: store3.id, filter_id: filter13.id)
store_filter8 = StoreFilter.create!(store_id: store4.id, filter_id: filter2.id)
store_filter9 = StoreFilter.create!(store_id: store4.id, filter_id: filter6.id)
store_filter10 = StoreFilter.create!(store_id: store5.id, filter_id: filter2.id)
store_filter11 = StoreFilter.create!(store_id: store5.id, filter_id: filter16.id)
store_filter12 = StoreFilter.create!(store_id: store5.id, filter_id: filter10.id)
store_filter13 = StoreFilter.create!(store_id: store6.id, filter_id: filter1.id)
store_filter14 = StoreFilter.create!(store_id: store6.id, filter_id: filter3.id)
store_filter15 = StoreFilter.create!(store_id: store6.id, filter_id: filter8.id)
store_filter16 = StoreFilter.create!(store_id: store6.id, filter_id: filter10.id)
store_filter17 = StoreFilter.create!(store_id: store7.id, filter_id: filter2.id)
store_filter18 = StoreFilter.create!(store_id: store7.id, filter_id: filter6.id)
store_filter19 = StoreFilter.create!(store_id: store8.id, filter_id: filter2.id)
store_filter20 = StoreFilter.create!(store_id: store8.id, filter_id: filter11.id)
store_filter21 = StoreFilter.create!(store_id: store8.id, filter_id: filter13.id)
store_filter22 = StoreFilter.create!(store_id: store8.id, filter_id: filter16.id)
store_filter23 = StoreFilter.create!(store_id: store9.id, filter_id: filter2.id)
store_filter24 = StoreFilter.create!(store_id: store9.id, filter_id: filter9.id)
store_filter25 = StoreFilter.create!(store_id: store9.id, filter_id: filter11.id)
store_filter26 = StoreFilter.create!(store_id: store10.id, filter_id: filter2.id)
store_filter27 = StoreFilter.create!(store_id: store10.id, filter_id: filter6.id)
store_filter29 = StoreFilter.create!(store_id: store10.id, filter_id: filter9.id)
store_filter30 = StoreFilter.create!(store_id: store10.id, filter_id: filter11.id)
store_filter31 = StoreFilter.create!(store_id: store10.id, filter_id: filter19.id)
store_filter33 = StoreFilter.create!(store_id: store10.id, filter_id: filter20.id)
store_filter34 = StoreFilter.create!(store_id: store11.id, filter_id: filter2.id)
store_filter35 = StoreFilter.create!(store_id: store11.id, filter_id: filter4.id)
store_filter36 = StoreFilter.create!(store_id: store11.id, filter_id: filter6.id)
store_filter38 = StoreFilter.create!(store_id: store11.id, filter_id: filter13.id)
store_filter39 = StoreFilter.create!(store_id: store11.id, filter_id: filter19.id)
store_filter40 = StoreFilter.create!(store_id: store11.id, filter_id: filter20.id)
store_filter41 = StoreFilter.create!(store_id: store6.id, filter_id: filter4.id)

# Menus
Menu.destroy_all
ri_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store11.id)
ri_menu2 = Menu.create!(title: 'Fine Dining', rank: 2, store_id: store11.id)
ri_menu3 = Menu.create!(title: 'Asian', rank: 3, store_id: store11.id)
ri_menu4 = Menu.create!(title: 'Wholesale', rank: 4, store_id: store11.id)


# Items
Item.destroy_all
item1 = Item.create!(name: 'Roasted Duck Breast(2)', price: 100.00, description: 'Pan-seared with rhubarb, fiddlehead fern, and gai lan', store_id: store11.id)
item1_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Duck.jpg')
item1.photo.attach(io: item1_photo, filename: 'Duck.jpg')

item2 = Item.create!(name: '16oz. A5 Wagyu Ribeye', description: 'Grilled to perfection and served with dry-aged wagyu butter', price: 95.00, store_id: store11.id)
item2_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Ribeye.jpg')
item2.photo.attach(io: item2_photo, filename: 'Ribeye.jpg')

item3 = Item.create!(name: 'Hamachi Nigiri Platter', description: 'IQF sushi-grade wild Hamachi from Japan',price: 35.00, store_id: store11.id)
item3_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Hamachi.jpg')
item3.photo.attach(io: item3_photo, filename: 'Hamachi.jpg')

item4 = Item.create!(name: 'Peking Duck', price: 40.00, description: 'Thin pieces of tender, roasted duck meat and crispy skin wrapped in a thin crepe, along with sliced spring onions, cucumbers, and hoisin sauce or sweet bean sauce.',store_id: store11.id)
item4_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/Peking.jpg')
item4.photo.attach(io: item4_photo, filename: 'Peking.jpg')

item5 = Item.create!(name: 'Dumplings(25)', price: 30.00, description: 'Pork, cabbage, green onion' ,store_id: store11.id)
item5_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/DumplingW.jpg')
item5.photo.attach(io: item5_photo, filename: 'DumplingW.jpg')

item6 = Item.create!(name: 'Catfish', price: 26.00, description:'Freshly caught catfish', store_id: store11.id)
item6_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/CatfishW.jpg')
item6.photo.attach(io: item6_photo, filename: 'CatfishW.jpg')

item7 = Item.create!(name: 'Whole Duck', price: 25.00,description: 'Freshly butchered duck', store_id: store11.id)
item7_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/DuckW.jpg')
item7.photo.attach(io: item7_photo, filename: 'DuckW.jpg')

item8 = Item.create!(name: 'A5 Wagyu Ribeye', price: 50.00, description: 'A5 Wagyu certified from Kobe Prefecture in Japan', store_id: store11.id)
item8_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/RibeyeW.jpg')
item8.photo.attach(io: item8_photo, filename: 'RibeyeW.jpg')


# Menu Items (Joins Table)
MenuItem.destroy_all
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


wk_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store1.id)
wk_menu2 = Menu.create!(title: 'Appetizers', rank: 2, store_id: store1.id)
wk_menu3 = Menu.create!(title: 'Soups & Noodle Soups', rank: 3, store_id: store1.id)
wk_menu4 = Menu.create!(title: 'Vegetarian Dishes', rank: 4, store_id: store1.id)

wkitem1 = Item.create!(name: 'Salt & Pepper Chicken Wings', price: 10.99, description: 'Salt and pepper chicken wings are fried to a crunchy golden brown and then tossed in a garlic, red chili, white and black pepper mixture, that makes them flavorful and addictive.', store_id: store1.id)
wkitem1_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WokGo.jpg')
wkitem1.photo.attach(io: wkitem1_photo, filename: 'WokGo.jpg')

wkitem2 = Item.create!(name: 'Preserved Egg & Pork Porridge', description: 'Slow cooked until creamy and leaves you feeling nourished', price: 9.99, store_id: store1.id)
wkitem2_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WokGo2.jpg') 
wkitem2.photo.attach(io: wkitem2_photo, filename: 'WokGo2.jpg')

wkitem3 = Item.create!(name: 'Potstickers', description: 'Steam-fried dumplings made with round wrappers and stuffed with juicy fillings, traditionally pork and cabbage.',price: 35.00, store_id: store1.id)
wkitem3_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKPotstickers.jpg')
wkitem3.photo.attach(io: wkitem3_photo, filename: 'WKPotstickers.jpg')

wkitem4 = Item.create!(name: 'Scallion Pancake', price: 8.99, description: 'Chinese, savory, unleavened flatbread folded with oil and minced scallions.',store_id: store1.id)
wkitem4_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKGreenOnion.jpg')
wkitem4.photo.attach(io: wkitem4_photo, filename: 'WKGreenOnion.jpg')

wkitem5 = Item.create!(name: 'Wonton Noodle Soup', price: 9.99, description: 'Bok choy, shrimp, pork/prawn filling wontons, and egg noodles, ' ,store_id: store1.id)
wkitem5_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKWontonNoodle.jpg')
wkitem5.photo.attach(io: wkitem5_photo, filename: 'WKWontonNoodle.jpg')

wkitem6 = Item.create!(name: 'Hot & Sour Soup', price: 6.99, description:'Pork shoulder, wood ear mushrooms, bamboo shoots, and tofu', store_id: store1.id)
wkitem6_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKHotSour.jpg')
wkitem6.photo.attach(io: wkitem6_photo, filename: 'WKHotSour.jpg')

wkitem7 = Item.create!(name: 'Garlic Snow Pea Leaves', price: 9.99,description: 'Snow pea leaves, sesame oil, garlic, white pepper, vegetable oil', store_id: store1.id)
wkitem7_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKPeaLeaves.jpg')
wkitem7.photo.attach(io: wkitem7_photo, filename: 'WKPeaLeaves.jpg')

wkitem8 = Item.create!(name: 'Chinese Broccoli', price: 8.99, description: 'Gai Lan, soy sauce, sesame oil, chinese rice wine, ginger', store_id: store1.id)
wkitem8_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKCBroccoli.jpg')
wkitem8.photo.attach(io: wkitem8_photo, filename: 'WKCBroccoli.jpg')

wkitem9 = Item.create!(name: 'Pickled Mustard Green Noodle Soup', price: 9.99, description: 'Pickled mustard greens, noodles, shredded pork, sesame oil, soy sauce', store_id: store1.id)
wkitem9_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKMustardSoup.jpg')
wkitem9.photo.attach(io: wkitem9_photo, filename: 'WKMustardSoup.jpg')

wkitem10 = Item.create!(name: 'Seafood Noodle Soup', price: 11.99, description: 'Bok choy, mussels, shrimp, squid, soy sauces, sesame sauce, and noodles', store_id: store1.id)
wkitem10_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKSeafoodSoup.jpg')
wkitem10.photo.attach(io: wkitem10_photo, filename: 'WKSeafoodSoup.jpg')

wkitem11 = Item.create!(name: 'Eggplant with Garlic Sauce', price: 9.99, description: 'Eggplant, soy sauce, black vinegar, red chili, and garlic', store_id: store1.id)
wkitem11_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKEggplant.jpg')
wkitem11.photo.attach(io: wkitem11_photo, filename: 'WKEggplant.jpg')

wkitem12 = Item.create!(name: 'Fried Tofu', price: 6.99, description: 'Soy Sauce, sesame oil, extra firm tofu, and green onion', store_id: store1.id)
wkitem12_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/WKFriedTofu.jpg')
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

mgitem1 = Item.create!(name: 'Nikutama Udon', price: 8.90, description: 'Our made to order Sanuki Udon noodles served with our signature Sweet & Savory Beef in our signature Bukkake SAUCE and topped with a Hot Spring Egg.', store_id: store2.id)
mgitem1_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGNikutama.jpg')
mgitem1.photo.attach(io: mgitem1_photo, filename: 'MGNikutama.jpg')

mgitem2 = Item.create!(name: 'Curry Udon', description: 'Our signature beef Curry Udon served with our made to order Sanuki Udon noodles', price: 7.30, store_id: store2.id)
mgitem2_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGCurry.jpg') 
mgitem2.photo.attach(io: mgitem2_photo, filename: 'MGCurry.jpg')

mgitem3 = Item.create!(name: 'Spam Musubi', description: 'A slice of our special grilled and seasoned SPAM on white rice. Listed price is for 1 Spam Musubi.',price: 2.80, store_id: store2.id)
mgitem3_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGSpamMusubi.jpg')
mgitem3.photo.attach(io: mgitem3_photo, filename: 'MGSpamMusubi.jpg')

mgitem4 = Item.create!(name: 'Crab Meat Musubi', price: 1.50, description: 'A musubi rice ball filled with an Imitation Crab Meat / mayonnaise mix.',store_id: store2.id)
mgitem4_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGCrabMusubi.jpg')
mgitem4.photo.attach(io: mgitem4_photo, filename: 'MGCrabMusubi.jpg')

mgitem5 = Item.create!(name: 'Mentai Mayo Musubi', price: 1.70, description: 'A musubi rice ball filled with a Mentai (Cod Roe) / mayonnaise mix.' ,store_id: store2.id)
mgitem5_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGMentaiMusubi.jpg')
mgitem5.photo.attach(io: mgitem5_photo, filename: 'MGMentaiMusubi.jpg')

mgitem6 = Item.create!(name: 'Salmon Flake Musubi', price: 1.70, description:'A musubi rice ball filled with flaked Salmon meat.', store_id: store2.id)
mgitem6_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGSalmonMusubi.jpg')
mgitem6.photo.attach(io: mgitem6_photo, filename: 'MGSalmonMusubi.jpg')

mgitem7 = Item.create!(name: 'Chicken Tempura', price: 1.90,description: 'Soy sauce marinated chicken breast deep fried with Tempura batter.', store_id: store2.id)
mgitem7_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGChickenTempura.jpg')
mgitem7.photo.attach(io: mgitem7_photo, filename: 'MGChickenTempura.jpg')

mgitem8 = Item.create!(name: 'Fishcake Tempura', price: 1.80, description: 'White fish based "Chikuwa" fishcake deep fried in Tempura batter.', store_id: store2.id)
mgitem8_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGFishcakeTempura.jpg')
mgitem8.photo.attach(io: mgitem8_photo, filename: 'MGFishcakeTempura.jpg')

mgitem9 = Item.create!(name: 'Shrimp Tempura', price: 2.00, description: 'A large Shrimp deep fried with Tempura batter.', store_id: store2.id)
mgitem9_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGShrimpTempura.jpg')
mgitem9.photo.attach(io: mgitem9_photo, filename: 'MGShrimpTempura.jpg')

mgitem10 = Item.create!(name: 'Sweet Potato Tempura', price: 1.70, description: 'A Japanese "Satsuma Imo" sweet potato deep fried in Tempura batter.', store_id: store2.id)
mgitem10_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGSweetTempura.jpg')
mgitem10.photo.attach(io: mgitem10_photo, filename: 'MGSweetTempura.jpg')

mgitem11 = Item.create!(name: 'Zucchini Tempura', price: 1.40, description: 'A slice of Zucchini squash deep fried in Tempura batter.', store_id: store2.id)
mgitem11_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGZucchiniTempura.jpg')
mgitem11.photo.attach(io: mgitem11_photo, filename: 'MGZucchiniTempura.jpg')

mgitem12 = Item.create!(name: 'Pumpkin Tempura', price: 1.30, description: 'A slice of Japanese "Kabocha" pumpkin deep fried in Tempura batter.', store_id: store2.id)
mgitem12_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGPumpkinTempura.jpg')
mgitem12.photo.attach(io: mgitem12_photo, filename: 'MGPumpkinTempura.jpg')

mgitem13 = Item.create!(name: 'Squid Tempura', price: 2.10, description: 'A sliced Squid deep fried in Tempura batter.', store_id: store2.id)
mgitem13_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGSquidTempura.jpg')
mgitem13.photo.attach(io: mgitem13_photo, filename: 'MGSquidTempura.jpg')

mgitem14 = Item.create!(name: 'Potato Croquette', price: 2.10, description: 'Mashed Potato deep fried in Panko bread crumbs.', store_id: store2.id)
mgitem14_photo= open('https://dannydash-seeds.s3-us-west-1.amazonaws.com/MGCroquette.jpg')
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