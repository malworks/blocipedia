require 'random_data'
# create users
5.times do
  User.create!(
    email: RandomData.random_email,
    password: RandomData.random_sentence
  )
end
users = User.all

 # Create wikis
 50.times do
   Wiki.create!(
     user: users.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
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
