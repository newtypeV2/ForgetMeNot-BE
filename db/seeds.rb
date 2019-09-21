# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users
claire = User.create(username: 'claire', password: 'password')


# Items

cellphone = Item.find_or_create_by(name: 'Smartphone')
wallet = Item.find_or_create_by(name: 'Wallet')
driver_license = Item.find_or_create_by(name: 'Driving License')
key_ring = Item.find_or_create_by(name: 'Key Ring')

passport = Item.find_or_create_by(name: 'Passport')
board_pass = Item.find_or_create_by(name: 'Boarding Pass')
shirts = Item.find_or_create_by(name: 'Shirts')
pants = Item.find_or_create_by(name: 'Pants')
under_garments = Item.find_or_create_by(name: 'Under Garments')
swim_garments = Item.find_or_create_by(name: 'Swimming Garments')

stethoscope = Item.find_or_create_by(name: 'Stethoscope')
id_card = Item.find_or_create_by(name: 'ID Card')

# Lists
travel = List.find_or_create_by(name: 'Cruise Checklist', user_id: claire.id)
work = List.find_or_create_by(name: 'Work', user_id: claire.id)


#ItemList
    #Travel

ItemList.find_or_create_by(list_id: travel.id, item_id: wallet.id)
ItemList.find_or_create_by(list_id: travel.id, item_id: driver_license.id)
ItemList.find_or_create_by(list_id: travel.id, item_id: key_ring.id)

ItemList.find_or_create_by(list_id: travel.id, item_id: passport.id)
ItemList.find_or_create_by(list_id: travel.id, item_id: board_pass.id)
ItemList.find_or_create_by(list_id: travel.id, item_id: shirts.id)
ItemList.find_or_create_by(list_id: travel.id, item_id: pants.id)
ItemList.find_or_create_by(list_id: travel.id, item_id: under_garments.id)
ItemList.find_or_create_by(list_id: travel.id, item_id: swim_garments.id)

    #Work
ItemList.find_or_create_by(list_id: work.id, item_id: wallet.id)
ItemList.find_or_create_by(list_id: work.id, item_id: driver_license.id)
ItemList.find_or_create_by(list_id: work.id, item_id: key_ring.id)

ItemList.find_or_create_by(list_id: work.id, item_id: stethoscope.id)
ItemList.find_or_create_by(list_id: work.id, item_id: id_card.id)
