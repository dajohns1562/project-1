# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'david@ga.co', :password => 'chicken'
u2 = User.create :email => 'mai@ga.co', :password => 'chicken'
u2 = User.create :email => 'chris@ga.co', :password => 'chicken'
u2 = User.create :email => 'kimberley@ga.co', :password => 'chicken'
u2 = User.create :email => 'joel@ga.co', :password => 'chicken'
u2 = User.create :email => 'faith@ga.co', :password => 'chicken'
puts "#{User.count} users"



#Associations

puts "Albums and Songs"
l1.songs << s1
l2.songs << s2
l3.songs << s3
l4.songs << s4
