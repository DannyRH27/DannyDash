# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Heroku doesn't seed in order so set seeds equal to variables and then access ids in joins table.

# users = User.create([
#     {fname: 'Danny', lname: 'Huang', email: 'drh8@gmail.com', password: 'cannotcode', address: '1', phone_number: 1234567890,},
#     {fname: 'Darrick', lname: 'Yong', email: 'dy29@gmail.com', password: 'codingwizard', address: '2', phone_number: 1234567891,},
#     {fname: 'TJ', lname: 'McCabe', email: 'tjm30@gmail.com', password: 'codinggenius', address: '3', phone_number: 1234567892},
#     {fname: 'Glen', lname: 'Park', email: 'gp12@gmail.com', password: 'codinggod', address: '4', phone_number: 1234567893},
#     {fname: 'Jay', lname: 'Chen', email: 'jc27@gmail.com', password: 'livingalgo', address: '5', phone_number: 1234567894}
# ])


# Users
User.destroy_all
user1 = User.create({fname: 'Danny', lname: 'Huang', email: 'drh8@gmail.com', password: 'cannotcode', address: '1', phone_number: 1234567890})
user2 = User.create({fname: 'Darrick', lname: 'Yong', email: 'dy29@gmail.com', password: 'codingwizard', address: '2', phone_number: 1234567891})
user3 = User.create({fname: 'TJ', lname: 'McCabe', email: 'tjm30@gmail.com', password: 'codinggenius', address: '3', phone_number: 1234567892})
user4 = User.create({fname: 'Glen', lname: 'Park', email: 'gp12@gmail.com', password: 'codinggod', address: '4', phone_number: 1234567893})
user5 = User.create({fname: 'Jay', lname: 'Chen', email: 'jc27@gmail.com', password: 'livingalgo', address: '5', phone_number: 1234567894})


# Stores and Store Index Photos
Store.destroy_all
store1 = Store.create!(name:'Wok & Go',address: '2700 24th St, San Francisco, CA 94110', hours: ['10:00AM - 11:00PM'], description: 'Best Salt & Pepper Wings in the city', status: 1, coordinate: '(37.7531, -122.4066)')
store1_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Salt&PepperWings.jpg')
store1_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/WokGo2.jpeg') 
store1.photos.attach(io: store1_photo1, filename: 'Salt&PepperWings.jpg')
store1.photos.attach(io: store1_photo2, filename: 'WokGo2.jpg')

store2 = Store.create!(name:'Marugame Udon',address: '3251 20th Ave space 184, San Francisco, CA 94132', hours: ['11:00AM - 10:00PM'], description: 'Hip spot where an array of udon dishes are prepared with noodles hand-pulled in an open kitchen.', status: 1, coordinate: '(37.728180, -122.477020)')
store2_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Udon.jpeg')
store2_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Udon2.jpeg')
store2.photos.attach(io: store2_photo1, filename: 'Udon.jpeg')
store2.photos.attach(io: store2_photo2, filename: 'Udon2.jpeg')

store3 = Store.create!(name:'Benu',address: '22 Hawthorne St, San Francisco, CA 94105', hours: ['5:30PM - 8:30PM'], description: 'Minimalist SoMa spot featuring innovative, ultrapricey American cuisine and renowned tasting menu.', status: 1, coordinate: '(37.785461, -122.399048)')
store3_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Benu.jpeg')
store3_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Benu2.jpeg')
store3.photos.attach(io: store3_photo1, filename: 'Benu.jpeg')
store3.photos.attach(io: store3_photo2, filename: 'Benu2.jpeg')

store4 = Store.create!(name:'Little Szechuan',address: '501 Broadway St, San Francisco, CA 94133', hours: ['11:00AM - 3:00PM'], description: 'Spicy Sichuan dishes, mu shu & Chinese stir-fries are served in a vintage A-frame building.', status: 1, coordinate: '(37.797790, -122.405700)')
store4_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Szechuan.jpeg')
store4_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Szechuan2.jpeg')
store4.photos.attach(io: store4_photo1, filename: 'Szechuan.jpeg')
store4.photos.attach(io: store4_photo2, filename: 'Szechuan2.jpeg')

store5 = Store.create!(name:'Thanh Tam II',address: '577 Valencia St, San Francisco, CA 94110', hours: ['11:15AM - 9:30PM'], description: 'No-frills restaurant with menu featuring over 150 Vietnamese & Southeast Asian dishes.', status: 1, coordinate: '(37.763690, -122.421470)')
store5_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/ThanhTam.jpeg')
store5_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/ThanhTam2.jpeg')
store5.photos.attach(io: store5_photo1, filename: 'ThanhTam.jpeg')
store5.photos.attach(io: store5_photo2, filename: 'ThanhTam2.jpeg')

store6 = Store.create!(name:'Mcdonalds',address: '302 Potrero Ave, San Francisco, CA 94110', hours: ['5:00AM - 2:00AM'], description: 'Classic, long-running fast-food chain known for its burgers, fries & shakes.', status: 1, coordinate: '(37.748960, -122.404820)')
store6_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Mcdonalds.jpeg')
store6_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Mcdonalds2.jpeg')
store6.photos.attach(io: store6_photo1, filename: 'Mcdonalds.jpeg')
store6.photos.attach(io: store6_photo2, filename: 'Mcdonalds2.jpeg')

store7 = Store.create!(name:'Seapot',address: '1952 S El Camino Real, San Mateo, CA 94403', hours: ['11:00AM - 9:30PM'], description: 'Spacious & stylish eatery featuring Chinese hot pot tables, plus a conveyor belt of food options.', status: 1, coordinate: '(37.548490, -122.310230)')
store7_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Seapot.jpeg')
store7_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Seapot2.jpeg')
store7.photos.attach(io: store7_photo1, filename: 'Seapot.jpeg')
store7.photos.attach(io: store7_photo2, filename: 'Seapot2.jpeg')

store8 = Store.create!(name:'Hot Sauce & Panko',address: '1468 Hyde St, San Francisco, CA 94109', hours: ['11:30AM - 7:00PM'], description: 'Tiny outpost for Korean-American comfort food, waffle sandwiches & over 300 hot sauce varieties.', status: 1, coordinate: '(37.794320, -122.418010)')
store8_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/HotSauce.jpeg')
store8_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/HotSauce2.jpeg')
store8.photos.attach(io: store8_photo1, filename: 'HotSauce.jpeg')
store8.photos.attach(io: store8_photo2, filename: 'HotSauce2.jpeg')

store9 = Store.create!(name:'Rooster & Rice',address: '4039 18th St, San Francisco, CA 94114', hours: ['11:00AM - 8:00PM'], description: 'Snug counter-service cafe serving dine-in or take-out khao mun gai (Thai chicken & rice).', status: 1, coordinate: '(37.760780, -122.433650)')
store9_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/RoosterRice.jpeg')
store9_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/RoosterRice2.jpeg')
store9.photos.attach(io: store9_photo1, filename: 'RoosterRice.jpeg')
store9.photos.attach(io: store9_photo2, filename: 'RoosterRice2.jpeg')

store10 = Store.create!(name:'Zen Modern Asian Bistro',address: '13510 Sabre Springs Pkwy, San Diego, CA 92128', hours: ['10:00AM - 9:00PM'], description: 'Casual counter-serve locale offering Asian fusion, wok-fried dishes & sushi amid basic decor.', status: 1, coordinate: '(32.962670, -117.092020)')
store10_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Zen.jpeg')
store10_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/Zen2.jpeg')
store10.photos.attach(io: store10_photo1, filename: 'Zen.jpeg')
store10.photos.attach(io: store10_photo2, filename: 'Zen2.jpeg')

store11 = Store.create!(name:'RI XV',address: '2250 23rd St, San Francisco, CA 94107', hours: ['11:30AM - 9:00PM'], description: 'Bib Gourmand. Home cooking with farm-to-table ingredients', status: 1, coordinate: '(37.754590, -122.402080)')
store11_photo1= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/RI1.jpg')
store11_photo2= open('/Users/dannyhuang/Desktop/AppAcademy/DannyDash/app/assets/images/RI2.jpg')
store11.photos.attach(io: store11_photo1, filename: 'RI1.jpg')
store11.photos.attach(io: store11_photo2, filename: 'RI2.jpg')

# Categories
Category.destroy_all
category1 = Category.create!(category_title: 'First Order,$0 Delivery Fee')
category2 = Category.create!(category_title: 'National Favorites')
category3 = Category.create!(category_title: 'Order Again & Save 20%')
category4 = Category.create!(category_title: 'First Order 20% Off')
category5 = Category.create!(category_title: '$0 Delivery Fee')
category6 = Category.create!(category_title: 'Most Popular Local Restaurants')
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
# Store Categories (Joins Table) (Consider Refactoring)
StoreCategory.destroy_all
store_category1 = StoreCategory.create!(store_id: store1.id, category_id: category6.id)
store_category2 = StoreCategory.create!(store_id: store1.id, category_id: category4.id)
store_category3 = StoreCategory.create!(store_id: store1.id, category_id: category1.id)
store_category4 = StoreCategory.create!(store_id: store1.id, category_id: category5.id)
store_category5 = StoreCategory.create!(store_id: store1.id, category_id: category3.id)
store_category6 = StoreCategory.create!(store_id: store2.id, category_id: category6.id)
store_category7 = StoreCategory.create!(store_id: store2.id, category_id: category3.id)
store_category8 = StoreCategory.create!(store_id: store2.id, category_id: category4.id)
store_category9 = StoreCategory.create!(store_id: store2.id, category_id: category1.id)
store_category10 = StoreCategory.create!(store_id: store2.id, category_id: category5.id)
store_category11 = StoreCategory.create!(store_id: store3.id, category_id: category6.id)
store_category12 = StoreCategory.create!(store_id: store4.id, category_id: category6.id)
store_category13 = StoreCategory.create!(store_id: store4.id, category_id: category3.id)
store_category14 = StoreCategory.create!(store_id: store4.id, category_id: category1.id)
store_category15 = StoreCategory.create!(store_id: store4.id, category_id: category4.id)
store_category16 = StoreCategory.create!(store_id: store5.id, category_id: category6.id)
store_category17 = StoreCategory.create!(store_id: store5.id, category_id: category5.id)
store_category18 = StoreCategory.create!(store_id: store5.id, category_id: category3.id)
store_category19 = StoreCategory.create!(store_id: store6.id, category_id: category2.id)
store_category20 = StoreCategory.create!(store_id: store6.id, category_id: category1.id)
store_category21 = StoreCategory.create!(store_id: store7.id, category_id: category6.id)
store_category22 = StoreCategory.create!(store_id: store7.id, category_id: category4.id)
store_category23 = StoreCategory.create!(store_id: store7.id, category_id: category1.id)
store_category24 = StoreCategory.create!(store_id: store8.id, category_id: category6.id)
store_category25 = StoreCategory.create!(store_id: store8.id, category_id: category3.id)
store_category26 = StoreCategory.create!(store_id: store8.id, category_id: category4.id)
store_category27 = StoreCategory.create!(store_id: store8.id, category_id: category5.id)
store_category28 = StoreCategory.create!(store_id: store9.id, category_id: category5.id)
store_category29 = StoreCategory.create!(store_id: store9.id, category_id: category2.id)
store_category30 = StoreCategory.create!(store_id: store9.id, category_id: category6.id)
store_category31 = StoreCategory.create!(store_id: store10.id, category_id: category1.id)
store_category32 = StoreCategory.create!(store_id: store10.id, category_id: category2.id)
store_category33 = StoreCategory.create!(store_id: store10.id, category_id: category3.id)
store_category34 = StoreCategory.create!(store_id: store10.id, category_id: category4.id)
store_category35 = StoreCategory.create!(store_id: store10.id, category_id: category5.id)
store_category36 = StoreCategory.create!(store_id: store10.id, category_id: category6.id)


# Filters 
Filter.destroy_all
filter1 = Filter.create!(filter_title: 'Convenience')
filter2 = Filter.create!(filter_title: 'Asian')
filter3 = Filter.create!(filter_title: 'Fast Food')
filter4 = Filter.create!(filter_title: 'Burgers')
filter5 = Filter.create!(filter_title: 'Healthy')
filter6 = Filter.create!(filter_title: 'Chinese')
filter7 = Filter.create!(filter_title: 'Desserts')
filter8 = Filter.create!(filter_title: 'Breakfast')
filter9 = Filter.create!(filter_title: 'Thai')
filter10 = Filter.create!(filter_title: 'Sandwiches')
filter11 = Filter.create!(filter_title: 'Chicken')
filter12 = Filter.create!(filter_title: 'Halal')
filter13 = Filter.create!(filter_title: 'Korean')
filter14 = Filter.create!(filter_title: 'Poke')
filter15 = Filter.create!(filter_title: 'Mexican')
filter16 = Filter.create!(filter_title: 'Vietnamese')
filter17 = Filter.create!(filter_title: 'Greek')
filter18 = Filter.create!(filter_title: 'Middle Eastern')
filter19 = Filter.create!(filter_title: 'Japanese')
filter20 = Filter.create!(filter_title: 'Sushi')
filter21 = Filter.create!(filter_title: 'Italian')

# Store Filters (Joins Table)

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
store_filter28 = StoreFilter.create!(store_id: store10.id, filter_id: filter7.id)
store_filter29 = StoreFilter.create!(store_id: store10.id, filter_id: filter9.id)
store_filter30 = StoreFilter.create!(store_id: store10.id, filter_id: filter11.id)
store_filter31 = StoreFilter.create!(store_id: store10.id, filter_id: filter19.id)
store_filter33 = StoreFilter.create!(store_id: store10.id, filter_id: filter20.id)
store_filter34 = StoreFilter.create!(store_id: store11.id, filter_id: filter2.id)
store_filter35 = StoreFilter.create!(store_id: store11.id, filter_id: filter4.id)
store_filter36 = StoreFilter.create!(store_id: store11.id, filter_id: filter6.id)
store_filter37 = StoreFilter.create!(store_id: store11.id, filter_id: filter7.id)
store_filter38 = StoreFilter.create!(store_id: store11.id, filter_id: filter13.id)
store_filter39 = StoreFilter.create!(store_id: store11.id, filter_id: filter19.id)
store_filter40 = StoreFilter.create!(store_id: store11.id, filter_id: filter20.id)
store_filter41 = StoreFilter.create!(store_id: store11.id, filter_id: filter21.id)

# Menus
Menu.destroy_all
ri_menu1 = Menu.create!(title: 'Popular Items', rank: 1, store_id: store11.id)
ri_menu2 = Menu.create!(title: 'Fine Dining', rank: 2, store_id: store11.id)
ri_menu3 = Menu.create!(title: 'Asian', rank: 3, store_id: store11.id)
ri_menu4 = Menu.create!(title: 'Wholesale', rank: 4, store_id: store11.id)

# Items
Item.destroy_all
item1 = Item.create!(name: 'Roasted Duck Breast(2)', price: 100.00, description: 'Pan-seared with rhubarb, fiddlehead fern, and pea shoot', store_id: store11.id)
item2 = Item.create!(name: '16oz. A5 Wagyu Ribeye', description: 'Grilled to perfection and served with dryaged wagyu butter', price: 95.00, store_id: store11.id)
item3 = Item.create!(name: 'Hamachi Nigiri Platter', description: 'IQF sushi-grade wild Hamachi from Japan',price: 35.00, store_id: store11.id)
item4 = Item.create!(name: 'Peking Duck', price: 40.00, description: 'Thin pieces of tender, roasted duck meat and crispy skin wrapped in a thin crepe, along with sliced spring onions, cucumbers, and hoisin sauce or sweet bean sauce.',store_id: store11.id)
item5 = Item.create!(name: 'Dumplings(25)', price: 30.00, description: 'pork, cabbage, green onion' ,store_id: store11.id)
item6 = Item.create!(name: 'Catfish', price: 26.00, description:'Freshly caught catfish', store_id: store11.id)
item7 = Item.create!(name: 'Whole Duck', price: 25.00,description: 'Freshly butchered duck', store_id: store11.id)
item8 = Item.create!(name: 'A5 Wagyu Ribeye', price: 50.00, description: 'A5 Wagyu certified from Kobe Prefecture in Japan', store_id: store11.id)


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

