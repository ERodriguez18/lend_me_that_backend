# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Shelf.destroy_all
Item.destroy_all
Cart.destroy_all

puts "Seeding Users"

user1 = User.create!(
    {name: 'Erick Rodriguez', email:'fakeemail@email.com', password_digest:'12345'}
)
user2 = User.create!(
    {name: 'Jessica Gonzalez', email:'fakeremail@email.com', password_digest:'54321'}
)
user3 = User.create!(
    {name: 'Randy Perez', email:'fakestemail@email.com', password_digest:'13579'}
)
user4 = User.create!(
    {name: 'Kyle Ashburn', email:'superfakeemail@email.com', password_digest:'246810'}
)

puts "Users Seeded!"

puts "Seeding Shelves"

shelf1 = Shelf.create!(
    {user_id: User.first.id, zipcode:'08635' }
)
shelf2 = Shelf.create!(
    {user_id: User.second.id, zipcode:'98647' }
)
shelf3 = Shelf.create!(
    {user_id: User.third.id, zipcode:'07071' }
)
shelf4 = Shelf.create!(
    {user_id: User.fourth.id, zipcode:'07047' }
)

puts "Shelves Seeded!"

puts "Seeding Carts"

cart1 = Cart.create!(
    {user_id: User.first.id}
)
cart2 = Cart.create!(
    {user_id: User.second.id}
)
cart3 = Cart.create!(
    {user_id: User.third.id}
)
cart4 = Cart.create!(
    {user_id: User.fourth.id}
)

puts "Carts Seeded!"

puts "Seeding Items"

item1 = Item.create!(
    {name: 'Halo', price: '15.99', start_date: '', end_date: '', rented: '', shelf_id: Shelf.first.id, cart_id: Cart.first.id, category: 'Shooter'}
)
item2 = Item.create!(
    {name: 'Watch Dogs', price: '12.99', start_date: '', end_date: '', rented: '', shelf_id: Shelf.first.id, cart_id: Cart.first.id, category: 'Action Adventure'}
)
item3 = Item.create!(
    {name: 'Assassins Creed', price: '9.99', start_date: '', end_date: '', rented: '', shelf_id: Shelf.second.id, cart_id: Cart.second.id, category: 'Action Adventure'}
)
item4 = Item.create!(
    {name: 'Mass Effect ', price: '8.99', start_date: '', end_date: '', rented: '', shelf_id: Shelf.second.id, cart_id: Cart.second.id, category: 'Action Adventure'}
)
item5 = Item.create!(
    {name: 'Call of Duty: Black Ops', price: '10.99', start_date: '', end_date: '', rented: '', shelf_id: Shelf.third.id, cart_id: Cart.third.id, category: 'Shooter'}
)
item6 = Item.create!(
    {name: 'Resident Evil Village', price: '10.99', start_date: '', end_date: '', rented: '', shelf_id: Shelf.fourth.id, cart_id: Cart.fourth.id, category: 'Horror Adventure'}
)
item7 = Item.create!(
    {name: 'MLB The Show 21', price: '15.99', start_date: '', end_date: '', rented: '', shelf_id: Shelf.fourth.id, cart_id: Cart.fourth.id, category: 'Sports'}
)
item8 = Item.create!(
    {name: 'Hitman', price: '8.99', start_date: '', end_date: '', rented: '', shelf_id: Shelf.third.id, cart_id: Cart.third.id, category: 'Shooter'}
)
item9 = Item.create!(
    {name: 'Far Cry 6', price: '15.99', start_date: '', end_date: '', rented: '', shelf_id: Shelf.first.id, cart_id: Cart.first.id, category: 'Action Adventure'}
)

puts "Items Seeded!"

