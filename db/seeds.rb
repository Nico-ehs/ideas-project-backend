# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Category.delete_all
Idea.delete_all
Comment.delete_all

u1=User.create(name: "user 1")
u2=User.create(name: "user 2")

c1=Category.create(title:'things', description: u1.id)
c2=Category.create(title:'plans', description: u1.id)

i1=Idea.create(title:'a shiny widgit', description: "", catagory_id: c1.id, user_id: u1.id)
i2=Idea.create(title:'do stuff', description: "", catagory_id: c2.id, user_id: u1.id)
Comment.create(text: "Update",idea_id: i1.id, user_id: u1.id)
Comment.create(text: "Nice",idea_id: i1.id, user_id: u2.id)
