# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Toothbrush.all.destroy_all

tb_array = [{title: "Red Brush", description: " An awesome red brush, collectors item", status: "Available"},
            {title: "Blue Brush", description: " An awesome blue brush, collectors item", status: "Not Available"},
            {title: "Green Brush", description: " An awesome green brush, collectors item", status: "Available"}]

tb_array.each do |tb|
  file = URI.open('https://www.stpetedentist.com/wp-content/uploads/2016/02/iStock_000008263086_Small.jpg')
  puts "Creating #{tb[:title]}"
  brush = Toothbrush.new(tb)
  brush.photo.attach(io: file, filename: 'toothbrush.png', content_type: 'image/png')
  brush.save!
end

puts "Seeding done"



