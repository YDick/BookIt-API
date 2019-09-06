# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
BookClub.delete_all

u1 = User.create({name: 'seed', email: 'seed@yahoo.com', password: 'password123', address: {address_line1: '234 Willow Ave', city: 'Toronto', province: 'Ontario', postal_code:' M4E 3K7', country: 'canada'}})
u2 = User.create({name: 'seed2', email: 'seed2@yahoo.com', password: 'password123', address: {address_line1: '315 St Germain Ave', city: 'Toronto', province: 'Ontario', postal_code:'ON M5M 1W4', country: 'canada'} })
u3 = User.create({name: 'seed3', email: 'seed3@yahoo.com', password: 'password123', address: {address_line1: '500 Kingston Rd', city: 'Toronto', province: 'Ontario', postal_code:'M4L 1V3', country: 'canada'} })

a = BookClub.create({name: 'clubseed', description: 'We read and talk about the best books!', address: {address_line1: '234 Willow Ave', city: 'Toronto', province: 'Ontario', postal_code:' M4E 3K7', country: 'canada'} })
b = BookClub.create({name: 'clubseed2', description: 'We read and talk about the best books!', address: {address_line1: '500 Kingston Rd', city: 'Toronto', province: 'Ontario', postal_code:'M4L 1V3', country: 'canada'}})
c = BookClub.create({name: 'clubseed3', description: 'We read and talk about the best books!', address: {address_line1: '315 St Germain Ave', city: 'Toronto', province: 'Ontario', postal_code:'ON M5M 1W4', country: 'canada'}})
d = BookClub.create({name: 'clubseed4', description: 'We read and talk about the best books!', address: {address_line1: '301 Front St W', city: 'Toronto', province: 'Ontario', postal_code:'M5V 2T6', country: 'canada'}})
 


a.users << u2

a.admins << u1