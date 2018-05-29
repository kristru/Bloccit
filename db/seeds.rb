# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'random_data'

#create Topics
15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
topics = Topic.all

#create posts
50.times do
  Post.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end
puts "#{Post.count} before Post.find_or_create_by"
Post.find_or_create_by(title:"Unique Post", body:"A unique body")
puts "#{Post.count} after Post.find_or_create_by"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

#create advertisements
30.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    copy: RandomData.random_sentence,
    price: RandomData.random_price
  )
end

advertisements = Advertisement.all


puts "#{Advertisement.count} before Advertisement.find_or_create_by"
Advertisement.find_or_create_by(title:"Unique Advertisement", copy:"A unique body")
puts "#{Advertisement.count} after Advertisement.find_or_create_by"

puts "Seed finished"
puts "#{Advertisement.count} posts created"
puts "#{Comment.count} comments created"

#create questions
30.times do
  Question.create!(
    title: RandomData.random_question,
    body: RandomData.random_sentence,
    resolved: false
  )
end

questions = Question.all

#create sponsoredPosts
10.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_price
  )
end

sponsored_post = SponsoredPost.all

puts "#{Question.count} before Questions.find_or_create_by"
Question.find_or_create_by(title:"Unique Questions", body:"A unique body")
puts "#{Question.count} after Questions.find_or_create_by"

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
puts "#{SponsoredPost.count} Sponsored Posts created"
