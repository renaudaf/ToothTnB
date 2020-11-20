# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.all.destroy_all
Toothbrush.all.destroy_all
Tag.all.destroy_all

joe = User.create!(email: 'joe@email.com', password: "12345", first_name: "Joe", last_name: "Exotic")
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/b/b1/Joe_Exotic_(Santa_Rose_County_Jail).png')
joe.photo.attach(io: file, filename: 'joe.png', content_type: 'image/png')

User.create!(email: 'mr@email.com', password: "12345", first_name: "Propre", last_name: "Mr")

john = User.create!(email: 'john@email.com', password: "12345", first_name: "John", last_name: "John")
file = URI.open('https://static.wikia.nocookie.net/villains/images/4/4a/Kevin_Spacey_John_Doe_Se7en.jpeg/revision/latest/top-crop/width/360/height/450?cb=20171230134058')
john.photo.attach(io: file, filename: 'john.png', content_type: 'image/png')


first = Toothbrush.new(title: "Tiger Brush", description: "Ain't barely been used, not much teeth round here", price: 0.5, status: "Available", user_id: User.first.id, address: '16 Villa Gaudelet, Paris')
file = URI.open('https://lh3.googleusercontent.com/proxy/yU3q5Y3nNZuY7202piT8MYVdVx3SxwEMu41XPjfR8goacbpoSythuLcNyeFRMQi_w8zjGi4c4SWfxEfxIAK5IGBvCZCxXPN8lpnQEJfBe3vUWLcDTsiJoDb_D6y3dZ4QeXKNeCWB8g')
first.photo.attach(io: file, filename: 'Tiger.png', content_type: 'image/png')
puts "Creating #{first[:title]}"
first.save!

second = Toothbrush.new(title: "Basically Basic", description: "Am I basic? Noooope! But my toothbrush is ;)", price: 125, status: "Not Available", user_id: User.first.id, address: '3555 avenue Casgrain, Montreal')
file = URI.open('https://www.drharris.co.uk/wp-content/uploads/2018/12/Toothbrush-Hard-Bristle-Sq.jpg')
second.photo.attach(io: file, filename: 'basic.png', content_type: 'image/png')
puts "Creating #{second[:title]}"
second.save!

fourth = Toothbrush.new(title: "Bamboosh", description: "My favorite Bamboo toothbrush that I use for my mouth, my shoes and my toilet!!", price: 15, status: "Available", address: 'quebec city', user_id: User.third.id)
file = URI.open('http://images.ethicalsuperstore.com/images/resize900/356867-humble-adult-bamboo-toothbrush-medium-blue.jpg')
fourth.photo.attach(io: file, filename: 'bamboosh.png', content_type: 'image/png')
puts "Creating #{fourth[:title]}"
fourth.save!

fifth = Toothbrush.new(title: "Weird Circular ToothBrush", description: "A bit big and weirdly shaped but it gets the job done", price: 2, status: "Available", address: 'quebec city', user_id: User.second.id)
file = URI.open('http://media-cdn.tripadvisor.com/media/photo-s/01/ed/46/b3/dirty-toilet-brush.jpg')
fifth.photo.attach(io: file, filename: 'weird.png', content_type: 'image/png')
puts "Creating #{fifth[:title]}"
fifth.save!

six = Toothbrush.new(title: "Like new, never used", description: "Bought it yesterday, but found my old one... Don't need it anymore", price: 25, status: "Available", address: "Charlotte, North Carolina, États-Unis d'Amérique", user_id: User.third.id)
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/5/59/Toothbrush_regurgitated_by_albatross_on_Tern_Island%2C_Hawaii_-_20060614.jpg')
six.photo.attach(io: file, filename: 'like.png', content_type: 'image/png')
puts "Creating #{six[:title]}"
six.save!

seven = Toothbrush.new(title: "Poseidon Brush", description: "We are located a bit far but we are worth the trip", price: 1, status: "Available", address: "Horta, Açores, Portugal", user_id: User.first.id)
file = URI.open('https://billionaireteethwhitening.com/wp-content/uploads/2017/03/tbrush-min-943x800.jpg')
seven.photo.attach(io: file, filename: 'like.png', content_type: 'image/png')
seven.save!
puts "Creating #{seven[:title]}"

tags = ["Antique", "Electric", "Powerful", "Luxurious", "Filthy", "Clean", "New"]

tags.each do |tag|
  Tag.create!(name: tag)
end

puts "Seeding done"



