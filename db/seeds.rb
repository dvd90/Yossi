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

User.create(email:'sara@gmail.com', password:'123456', username:'sara', alyah_date: Date.new(2019,2,5), avatar:'https://res.cloudinary.com/diu66bbfw/image/upload/v1551948290/tze5qxjod8hc98xen3nr.jpg')
User.create(email:'snowden@gmail.com', password:'123456', username:'snowden', alyah_date: Date.new(2019,6,10), avatar:'https://res.cloudinary.com/diu66bbfw/image/upload/v1551948293/gfsmoqfv4dugx3kkb2te.jpg')
User.create(email:'lucy@gmail.com', password:'123456', username:'lucy', alyah_date: Date.new(2018,4,10), avatar:'https://res.cloudinary.com/diu66bbfw/image/upload/v1551948295/spt3ozi4ewsp6if1zmsx.jpg')
User.create(email:'jack@gmail.com', password:'123456', username:'jack', alyah_date: Date.new(2018,12,25), avatar:'https://res.cloudinary.com/diu66bbfw/image/upload/v1551948275/hwq5cb9ykntdllz4lq85.jpg')

Mesima.create(name:'Falafel', description:'I ate a falafel pita and spent less than 10 nis.', worth: 1, category:'Food')
Mesima.create(name:'Shakshuka', description:'I ate shakshuka for breakfast with an extra scoop of zhoug.', worth: 5, category:'Food')
Mesima.create(name:'Sabich', description:'I ate sabich and asked for extra amba.', worth: 3, category:'Food')
Mesima.create(name:'Jachnun', description:'I found a secret jachnun spot and ate every last bite.', worth: 1, category:'Food')
Mesima.create(name:'Hummus', description:'I scooped my hummus with a slice of onion.', worth: 1, category:'Food')
Mesima.create(name:'Schwarma', description:'I ate schwarma and kept my shirt clean.', worth: 10, category:'Food')
Mesima.create(name:'Arak', description:'I washed it all down with a chaser of arak.', worth: 10, category:'Food')
Mesima.create(name:'Float', description:'I spent the better half of a day floated in the dead sea while covered in mud.', worth: 1, category:'Activity')
Mesima.create(name:'Dip', description:'I braved the jelly fish to take a dip in the med.', worth: 10, category:'Activity')
Mesima.create(name:'Dive', description:'I went for a dive in the red sea.', worth: 5, category:'Activity')
Mesima.create(name:'Burrow', description:'I traveled through literal layers of time in the burrows of the old city.', worth:1, category:'Activity')
Mesima.create(name:'Picnic', description:'I had a picnic on the shores of the Kineret.', worth: 1, category:'Activity')
Mesima.create(name:'Ski', description:'I braved the inch of snow on Mt Hermon (and nearly froze).', worth: 3, category:'Activity')
Mesima.create(name:'Defend', description:'I defended my spot in line when people were cutting from all directions.', worth: 1, category:'Hutzpa')
Mesima.create(name:'Argue', description:'I argued about something super menial, just because.', worth: 10, category:'Hutzpa')
Mesima.create(name:'Push', description:'I pushed and pushed until someone in the bureaucratic system finally did what I asked.', worth:5, category:'Hutzpa')
Mesima.create(name:'Haggle', description:'I negotiated the price of my bananas like a pro.', worth: 3, category:'Hutzpa')

2.times do
User.all.each do |user|
   Accepted.create(user: user,
                  mesima: Mesima.all[(rand(0..13))],
                  status: 'accepted')
end
end

puts "done...."
