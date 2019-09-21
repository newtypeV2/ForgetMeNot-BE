# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

claire = User.create(username: 'claire', password: 'password')


passport = Item.find_or_create_by(name: 'Passport')
board_pass = Item.find_or_create_by(name: 'Boarding Pass')

travel = List.find_or_create_by(name: 'Cruise Checklist', user_id: claire.id)

ItemList.find_or_create_by(list_id: travel.id, item_id: passport.id)
ItemList.find_or_create_by(list_id: travel.id, item_id: board_pass.id)