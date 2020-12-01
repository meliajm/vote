# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# liza = User.create( firstname: 'LizaMarie', lastname: 'Shorty', phonenumber: '123456789', receivesNotification: true, email: "lizamarie@email.com")

rails generate migration User firstname:string lastname:string email:string phonenumber:string receivesNotification:boolean address1:string address2:string city:string zip:integer state:string message:text canVolunteer:boolean