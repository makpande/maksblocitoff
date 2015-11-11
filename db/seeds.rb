require 'faker'

# Create Users
5.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end

mak = User.create!(
  name: 'Mak Pande',
  email: 'makpande2015@gmail.com',
  password: 'helloworld'
)

mak.skip_confirmation!
mak.save!

users = User.all
puts "#{User.count} users created"

# Create items
25.times do
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
end
items = Item.all
puts "#{Item.count} items created"

puts "Seed finished"
