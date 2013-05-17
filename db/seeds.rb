# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Pic.create(title: "Sweet and Juicy", score: 10, tags: "cool, refreshing", image: "/uploads/jugs1.jpg", published_at: "2013-05-14 18:39:35")

Pic.create(title: "Natural", score: 6, tags: "earthy, functional", image: "/uploads/jugs2.jpg", published_at: "2013-05-14 18:39:36")

Pic.create(title: "Weird", score: 3, tags: "odd", image: "/uploads/jugs3.jpg", published_at: "2013-05-14 18:39:37")

Pic.create(title: "Classy", score: 7, tags: "professional, shiny", image: "/uploads/jugs4.jpg", published_at: "2013-05-14 18:39:38")

Pic.create(title: "Big", score: 8, tags: "big, plastic, floats",  image: "/uploads/jugs5.jpg", published_at: "2013-05-14 18:39:39")
