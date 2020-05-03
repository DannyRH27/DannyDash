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

User.destroy_all
user1 = User.create({fname: 'Danny', lname: 'Huang', email: 'drh8@gmail.com', password: 'cannotcode', address: '1', phone_number: 1234567890})
user1 = User.create({fname: 'Darrick', lname: 'Yong', email: 'dy29@gmail.com', password: 'codingwizard', address: '2', phone_number: 1234567891})
user1 = User.create({fname: 'TJ', lname: 'McCabe', email: 'tjm30@gmail.com', password: 'codinggenius', address: '3', phone_number: 1234567892})
user1 = User.create({fname: 'Glen', lname: 'Park', email: 'gp12@gmail.com', password: 'codinggod', address: '4', phone_number: 1234567893})
user1 = User.create({fname: 'Jay', lname: 'Chen', email: 'jc27@gmail.com', password: 'livingalgo', address: '5', phone_number: 1234567894})

Store.destroy_all
store1 = Store.create!(name:'Wok & Go',address: '2700 24th St, San Francisco, CA 94110', hours: ['M-F All Day'], description: 'Best Salt & Pepper Wings in the city', status: 1, coordinate: '(37.7531, -122.4066)')
store2 = Store.create!(name:'Marugame Udon',address: '3251 20th Ave space 184, San Francisco, CA 94132', hours: ['M-F All Day'], description: 'Hip spot where an array of udon dishes are prepared with noodles hand-pulled in an open kitchen.', status: 1, coordinate: '(37.728180, -122.477020)')
store3 = Store.create!(name:'Benu',address: '22 Hawthorne St, San Francisco, CA 94105', hours: ['M-F All Day'], description: 'Minimalist SoMa spot featuring innovative, ultrapricey American cuisine and renowned tasting menu.', status: 1, coordinate: '(37.785461, -122.399048)')
store4 = Store.create!(name:'Little Szechuan',address: '501 Broadway St, San Francisco, CA 94133', hours: ['M-F All Day'], description: 'Spicy Sichuan dishes, mu shu & Chinese stir-fries are served in a vintage A-frame building.', status: 1, coordinate: '(37.797790, -122.405700)')
store5 = Store.create!(name:'Thanh Tam II',address: '577 Valencia St, San Francisco, CA 94110', hours: ['M-F All Day'], description: 'No-frills restaurant with menu featuring over 150 Vietnamese & Southeast Asian dishes.', status: 1, coordinate: '(37.763690, -122.421470)')
store6 = Store.create!(name:'Mcdonalds',address: '302 Potrero Ave, San Francisco, CA 94110', hours: ['M-F All Day'], description: 'Classic, long-running fast-food chain known for its burgers, fries & shakes.', status: 1, coordinate: '(37.748960, -122.404820)')
store7 = Store.create!(name:'Seapot',address: '1952 S El Camino Real, San Mateo, CA 94403', hours: ['M-F All Day'], description: 'Spacious & stylish eatery featuring Chinese hot pot tables, plus a conveyor belt of food options.', status: 1, coordinate: '(37.548490, -122.310230)')
store8 = Store.create!(name:'Hot Sauce & Panko',address: '1468 Hyde St, San Francisco, CA 94109', hours: ['M-F All Day'], description: 'Tiny outpost for Korean-American comfort food, waffle sandwiches & over 300 hot sauce varieties.', status: 1, coordinate: '(37.794320, -122.418010)')
store9 = Store.create!(name:'Rooster & Rice',address: '4039 18th St, San Francisco, CA 94114', hours: ['M-F All Day'], description: 'Snug counter-service cafe serving dine-in or take-out khao mun gai (Thai chicken & rice).', status: 1, coordinate: '(37.760780, -122.433650)')
store10 = Store.create!(name:'Zen Modern Asian Bistro',address: '13510 Sabre Springs Pkwy, San Diego, CA 92128', hours: ['M-F All Day'], description: 'Casual counter-serve locale offering Asian fusion, wok-fried dishes & sushi amid basic decor.', status: 1, coordinate: '(32.962670, -117.092020)')



