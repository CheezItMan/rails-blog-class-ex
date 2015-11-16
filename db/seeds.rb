# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
seed_posts = [
  {title: "hello", publish_date: Time.now },
  {title: "goodbye", publish_date: Time.now },
  {title: "news", publish_date: Time.now },
  {title: "news2", publish_date: Time.now },
  {title: "updates", publish_date: Time.now }
]

seed_posts.each do |seed|
  Post.create(seed)
end
