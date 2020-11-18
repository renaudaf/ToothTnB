# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Toothbrush.all.destroy_all
User.all.destroy_all

User.create!(email: 'ad@email.com', password: "1234", first_name: "hello", last_name: "bonjour")

tb_array = [{title: "Red Brush", description: " An awesome red brush, collectors item", price: 10, status: "Available", user_id: User.first.id, address: '16 Villa Gaudelet, Paris'},
            {title: "Blue Brush", description: " An awesome blue brush, collectors item", price: 11, status: "Not Available", user_id: User.first.id, address: '16 Villa Gaudelet, Paris'},
            {title: "Green Brush", description: " An awesome green brush, collectors item", price: 13, status: "Available", address: '16 Villa Gaudelet, Paris', user_id: User.first.id}]


tb_array.each do |tb|
  file = URI.open('https://www.stpetedentist.com/wp-content/uploads/2016/02/iStock_000008263086_Small.jpg')
  puts "Creating #{tb[:title]}"
  brush = Toothbrush.new(tb)
  brush.photo.attach(io: file, filename: 'toothbrush.png', content_type: 'image/png')
  brush.save!
end

puts "Seeding done"



