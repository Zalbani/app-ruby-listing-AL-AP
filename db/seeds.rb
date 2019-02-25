# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Role.create(name: 'user', id: 1)
Role.create(name: 'admin', id: 2)
User.create(first_name:"admin",last_name:"admin" ,email: 'admin@mail.com', password: 'password', password_confirmation: 'password',roles_id: 2)
User.create(first_name:"user",last_name:"user" ,email: 'user@mail.com', password: 'password', password_confirmation: 'password', roles_id: 1)