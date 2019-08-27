# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
BookClub.delete_all

u1 = User.create({name: 'seed', email: 'seed@yahoo.com', password: 'password123', address: {address_line1: '301', address_line2: 'Front St W', city: 'Toronto'}})
u2 = User.create({name: 'seed2', email: 'seed2@yahoo.com', password: 'password123', address: {address_line1: '301', address_line2: 'Front St W', city: 'Toronto'} })

a = BookClub.create({name: 'clubseed', address: {address_line1: '123', address_line2: 'Front St W', city: 'Toronto'}})
b = BookClub.create({name: 'clubseed2', address: {address_line1: '160', address_line2: 'Front St W', city: 'Toronto'}})
c = BookClub.create({name: 'clubseed3', address: {address_line1: '255', address_line2: 'Bremner Blvd', city: 'Toronto'}})


a.users << u2

a.admins << u1