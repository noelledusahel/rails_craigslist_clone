# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!([{ name: :Cars},
                  { name: :Boats},
                  {name:  "Casual Encounters"}])

User.create!([{email: "ryanklandgren", password: "password"}])

Article.create! [
  {title: "Old Dogs", body: "New Tricks!", price: "44", category_id: 1, user_id: 1},
  {title: "Chicken Nuggets", body: "One Day Old Nuggets", price: "0", category_id: 2, user_id: 1},
  {title: "I saw you on the subway", body: "you looked good!", price: "0", category_id: 3, user_id: 1}
]

