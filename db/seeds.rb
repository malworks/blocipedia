require 'random_data'
# create users
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Space.star + Faker::Internet.password
  )
end
users = User.all

 # Create wikis
 50.times do
   Wiki.create!(
     user: users.sample,
     title:  Faker::Hipster.sentence,
     body:   Faker::Hipster.paragraphs(3),
     private: false
   )
 end
 wikis = Wiki.all

user = User.first
user.update_attributes!(
  email: 'malloryworks@gmail.com',
  password: 'password'
)

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Wiki.count} wikis created"
