# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Role.create(name: 'user')
Role.create(name: 'admin')
User.create(first_name:"admin",last_name:"admin" ,email: 'admin@mail.com', password: 'password', password_confirmation: 'password',role: Role.find_by_name("admin"))
User.create(first_name:"user",last_name:"user" ,email: 'user@mail.com', password: 'password', password_confirmation: 'password', role:  Role.find_by_name("user"))
User.create(first_name:"user1",last_name:"user1" ,email: 'user1@mail.com', password: 'password', password_confirmation: 'password', role:  Role.find_by_name("user"))
Category.create(name:"Emploie")
Category.create(name:"Véhicule")
Category.create(name:"Immobilier")
Category.create(name:"Vacances")
Category.create(name:"Multimédia")
Category.create(name:"Maison")
Category.create(name:"Loisir")
Category.create(name:"Matériel Profesionnel")
Category.create(name:"Service")
Annonce.create(title:"Vélo",content:"Superbe velo, presque neuf",user:User.find_by_email('user@mail.com'),category:Category.find_by_name("Loisir"),price:"65")
Annonce.create(title:"Moto",content:"Superbe moto, presque neuf, 1000 km",user:User.find_by_email('user1@mail.com'),category:Category.find_by_name("Véhicule"),price:"4500")
Annonce.create(title:"PS3",content:"Superbe PS3, presque neuf, 3 jeux",user:User.find_by_email('user1@mail.com'),category:Category.find_by_name("Multimédia"),price:"150")
Message.create(message:"Super votre moto, je la veux",user:User.find_by_email("user1@mail.com"),annonce:Annonce.find_by_title("Vélo"))
Message.create(message:"Super votre ps3, je la veux",user:User.find_by_email("user@mail.com"),annonce:Annonce.find_by_title("PS3"))