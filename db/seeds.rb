# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seeds begin now"

Chatroom.create!(name: "principal")
User.create!(username: "toutou", email: "toutou@toutou.fr", password: "toutou@toutou.fr")
User.create!(username: "lolo", email: "lolo@lolo.fr", password: "lolo@lolo.fr")

puts "Number of chatroom created #{Chatroom.count}"
puts "Number of user created #{User.count}"
