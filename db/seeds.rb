# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


titles =["Magic as Technology",
   "Post Scarcity Utopia",
   "Space Fantasy",
   "Modern Reality",
   "Game",
   "Event Aggregator",
   "Code Snippets",
   "Coding Language Review Site",
]

descriptions=["A setting where the magic systems has been repeatedly optimized and starts to displays standardization and industrialization s to become integrated with the economy and daily life.",
   "A world where most physical goods and services are sufficiently plentifully to be provided for free in decent quantity and quality",
   "Where the ship blasters echo across the battlefield because **** physics if sounds cool.",
   "Refer to personal human memory storage",
   "Site hosting a game(s).",
   "A site that scrapes data for a type of event",
   "A site for sharing short usual functions in a range of programing Languages",
   "Compare and rate programing languages both with and without libraries.",
]

# User.destroy_all
# Category.destroy_all
# Idea.destroy_all
# Comment.destroy_all

u1=User.create(name: "Author", password: "test")
u2=User.create(name: "Project Ideas", password: "test")

# c1=Category.create(title:'things', description: "objects")
# c2=Category.create(title:'plans', description: "do stuff" )


c1=Category.create(title:'Story Ideas', description: "Settings and plot devices")
c2=Category.create(title:'Website Ideas', description: "Ideas for simple website projects" )


i1=Idea.create(title:titles[0], description: descriptions[0], category_id: c1.id, user_id: u1.id)
i2=Idea.create(title:titles[1], description: descriptions[1], category_id: c1.id, user_id: u1.id)
i1=Idea.create(title:titles[2], description: descriptions[2], category_id: c1.id, user_id: u1.id)
i1=Idea.create(title:titles[3], description: descriptions[3], category_id: c1.id, user_id: u1.id)
i1=Idea.create(title:titles[4], description: descriptions[4], category_id: c2.id, user_id: u2.id)
i1=Idea.create(title:titles[5], description: descriptions[5], category_id: c2.id, user_id: u2.id)
i1=Idea.create(title:titles[6], description: descriptions[6], category_id: c2.id, user_id: u2.id)
i1=Idea.create(title:titles[7], description: descriptions[7], category_id: c2.id, user_id: u2.id)
# i2=Idea.create(title:'do stuff', description: "", category_id: c2.id, user_id: u1.id)
# Comment.create(text: "Update",idea_id: i1.id, user_id: u1.id)
# Comment.create(text: "Nice",idea_id: i1.id, user_id: u2.id)


# SubCategory.create(title:'things', description: "objects")

# print(Idea.all)
