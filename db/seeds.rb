# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Nettoyons la DB..."

Restaurant.destroy_all

puts "Créons des restaurants.."

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Fantasy::Tolkien.character ,
    address: Faker::Address.city,
    category: Restaurant::CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  puts "Restaurant #{restaurant.id} a été créé"
end

puts "Tout fini!"
