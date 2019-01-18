# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Idea.destroy_all
Comment.destroy_all

u1=User.create(name: "user 1", password: "test")
u2=User.create(name: "user 2", password: "test")

c1=Category.create(title:'things', description: "objects")
c2=Category.create(title:'plans', description: "do stuff" )

i1=Idea.create(title:'a shiny widgit', description: "", category_id: c1.id, user_id: u1.id)
i2=Idea.create(title:'do stuff', description: "", category_id: c2.id, user_id: u1.id)
Comment.create(text: "Update",idea_id: i1.id, user_id: u1.id)
Comment.create(text: "Nice",idea_id: i1.id, user_id: u2.id)

# print(Idea.all)
