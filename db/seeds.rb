# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Accepted.delete_all
Mesima.delete_all
User.delete_all

puts "creating seeds...."
category = %w[food]
5.times do |index|
   User.create(email: "user#{index}@gmail.com",
              password: '123456',
              username: "user#{index}",
              alyah_date: Date.new(2019,1,(index + 1)),
              avatar: "avatar for user #{index}")
end

5.times do |index|

   Mesima.create(name: "Mesima #{index}",
                description: "This is mesima #{index} description",
                worth: (index * 5),
                category: category[0])
end


2.times do |ind|
  User.all.each do |user|
   Accepted.create(user: user,
                  mesima: Mesima.all[(rand(0..4))],
                  status: 'accepted')
 end
end

puts "done...."
