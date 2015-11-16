# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
seed_writers = [
  { name: "Jones",  bio: "Just jonesin' around town"},
  { name: "Kari",   bio: "Kari is a human being"},
  { name: "Rogers", bio: "Who is Rogers anyway?"},
  { name: "Noon",   bio: "Secret noon person/place/thing"}
]

seed_writers.each do |seed|
  Writer.create(seed)
end

seed_posts = [
  {title: "hello",    publish_date: Time.now, writer_id: 2 },
  {title: "goodbye",  publish_date: Time.now, writer_id: 2 },
  {title: "news",     publish_date: Time.now, writer_id: 3 },
  {title: "news2",    publish_date: Time.now, writer_id: 1 },
  {title: "updates",  publish_date: Time.now, writer_id: 1 }
]

seed_posts.each do |seed|
  Post.create(seed)
end
