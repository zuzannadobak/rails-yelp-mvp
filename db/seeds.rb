# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.create!({ name: "Heising", address: "Around the corner", category: "french" })
Restaurant.create({ name: "Italian Pizza", address: "Around the another corner", category: "italian" })
Restaurant.create({ name: "Dumplings", address: "Down the street", category: "chinese" })
Restaurant.create({ name: "Chocolate wave", address: "Down the another street", category: "belgian" })
Restaurant.create({ name: "Waffle", address: "Up the street", category: "belgian" })
