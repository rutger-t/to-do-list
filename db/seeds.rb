# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.create(name: 'Shower', description: 'Take a shower')
Task.create(name: 'Study', description: 'Study Ruby on Rails')
Task.create(name: 'Lunch', description: 'Lunch with Luke')
Task.create(name: 'Sleep', description: 'Sleep at 8pm')
Task.create(name: 'Dinner', description: 'Dinner with Mona')
Task.create(name: 'Gym', description: 'Weekly workout')
Task.create(name: 'Breakfast', description: 'Breakfast with Luke')
Task.create(name: 'Sleep', description: 'Sleep at 9pm')
Task.create(name: 'Dinner', description: 'Dinner with Gregg')
Task.create(name: 'Sports', description: 'Weekly workout')

User.create(name: "Example User", email: "example@railstutorial.org", password: "foobar", password_confirmation: "foobar", admin: true)
User.create(name: "Example User2", email: "example2@railstutorial.org", password: "foobar", password_confirmation: "foobar", admin: false)
User.create(name: "Example User3", email: "example3@railstutorial.org", password: "foobar", password_confirmation: "foobar", admin: false)
User.create(name: "Example User4", email: "example4@railstutorial.org", password: "foobar", password_confirmation: "foobar", admin: false)
User.create(name: "Example User4", email: "example5@railstutorial.org", password: "foobar", password_confirmation: "foobar", admin: false)