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

joe = User.create!(email: 'joe@email.com', password: "1111", first_name: "Joe", last_name: "Exotic")
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/b/b1/Joe_Exotic_(Santa_Rose_County_Jail).png')
joe.photo.attach(io: file, filename: 'joe.png', content_type: 'image/png')
User.create!(email: 'mr@email.com', password: "1111", first_name: "Propre", last_name: "Mr")

first = Toothbrush.create!(title: "Tiger Brush", description: "Ain't barely been used, not much teeth round here", price: 0.5, status: "Available", user_id: User.first.id, address: '16 Villa Gaudelet, Paris')
file = URI.open('https://s3.images-iherb.com/bbd/bbd00302/l/4.jpg')
first.photo.attach(io: file, filename: 'Tiger.png', content_type: 'image/png')
puts "Creating #{first[:title]}"

second = Toothbrush.create!(title: "Basically Basic", description: "Am I basic? Noooope! But my toothbrush is ;)", price: 125, status: "Not Available", user_id: User.first.id, address: '3555 avenue Casgrain, Montreal')
file = URI.open('https://www.drharris.co.uk/wp-content/uploads/2018/12/Toothbrush-Hard-Bristle-Sq.jpg')
second.photo.attach(io: file, filename: 'basic.png', content_type: 'image/png')
puts "Creating #{second[:title]}"

third = Toothbrush.create!(title: "Superbrush", description: "The best brush ever seen", price: 1000, status: "Available", address: 'les iles de la madeleine', user_id: User.first.id)
file = URI.open('https://2.bp.blogspot.com/_6oNwJRFieFg/TNQxdla_WWI/AAAAAAAAAMg/EY3eRnZGmWM/s1600/toothbrush_1.jpg')
third.photo.attach(io: file, filename: 'superbrush.png', content_type: 'image/png')
puts "Creating #{third[:title]}"

fourth = Toothbrush.create!(title: "Bamboosh", description: "My favorite Bamboo toothbrush that I use for my mouth, my shoes and my toilet!!", price: 15, status: "Available", address: 'quebec city', user_id: User.first.id)
file = URI.open('http://images.ethicalsuperstore.com/images/resize900/356867-humble-adult-bamboo-toothbrush-medium-blue.jpg')
fourth.photo.attach(io: file, filename: 'bamboosh.png', content_type: 'image/png')
puts "Creating #{fourth[:title]}"

fifth = Toothbrush.create!(title: "Weird Circular ToothBrush", description: "A bit big and weirdly shaped but it gets the job done", price: 2, status: "Available", address: 'quebec city', user_id: User.first.id)
file = URI.open('http://media-cdn.tripadvisor.com/media/photo-s/01/ed/46/b3/dirty-toilet-brush.jpg')
fifth.photo.attach(io: file, filename: 'weird.png', content_type: 'image/png')
puts "Creating #{fifth[:title]}"

six = Toothbrush.create!(title: "Like new, never used", description: "Bought it yesterday, but found my old one... Don't need it anymore", price: 25, status: "Available", address: "Charlotte, North Carolina, États-Unis d'Amérique", user_id: User.first.id)
file = URI.open('https://tsawwassenplacedental.ca/wp-content/uploads/2016/08/frayed-toothbrush.jpg')
six.photo.attach(io: file, filename: 'like.png', content_type: 'image/png')
puts "Creating #{six[:title]}"

seven = Toothbrush.create!(title: "Poseidon Brush", description: "We are located a bit far but we are worth the trip", price: 1, status: "Available", address: "Horta, Açores, Portugal", user_id: User.first.id)
file = URI.open('https://billionaireteethwhitening.com/wp-content/uploads/2017/03/tbrush-min-943x800.jpg')
seven.photo.attach(io: file, filename: 'like.png', content_type: 'image/png')
puts "Creating #{seven[:title]}"

puts "Seeding done"



