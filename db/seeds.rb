require 'random_data'
# create users
5.times do
  User.create!(
    email: RandomData.random_email,
    password: RandomData.random_sentence
  )
end
users = User.all

 # Create Posts
 50.times do
 # #1
   Wiki.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
     private: false
   )
 end
 wikis = Wiki.all



 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Wiki.count} wikis created"
