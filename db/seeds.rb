# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
BookClub.delete_all

u1 = User.create({name: 'Yehudis', email: 'yehudis@yahoo.com', password: 'password123', address: {address_line1: '234 Willow Ave', city: 'Toronto', province: 'Ontario', postal_code:' M4E 3K7', country: 'canada'}})
u2 = User.create({name: 'Larisa', email: 'larisa@yahoo.com', password: 'password123', address: {address_line1: '315 St Germain Ave', city: 'Toronto', province: 'Ontario', postal_code:'ON M5M 1W4', country: 'canada'} })
u3 = User.create({name: 'Yudi', email: 'yudi@yahoo.com', password: 'password123', address: {address_line1: '500 Kingston Rd', city: 'Toronto', province: 'Ontario', postal_code:'M4L 1V3', country: 'canada'} })

a = BookClub.create({name: 'The Hunger Games ', description: 'We read and talk about the hunger games. If you love the hunger games too join us every sunday at 1:00!',genre: 'Hunger Games' , address: {address_line1: '234 Willow Ave', city: 'Toronto', province: 'Ontario', postal_code:' M4E 3K7', country: 'canada'} })
b = BookClub.create({name: 'Fantasy Books', description: 'We read and talk about the all fantasy books. If you love fantasy books too join us every Monday 7:00 -8:00!',genre: 'Fantasy', address: {address_line1: '500 Kingston Rd', city: 'Toronto', province: 'Ontario', postal_code:'M4L 1V3', country: 'canada'}})
c = BookClub.create({name: 'History is The Best!', description: 'We read and talk about the best history books. If you love history books too join us every Tuesday from 9:00 -11:00!', genre: 'History', address: {address_line1: '315 St Germain Ave', city: 'Toronto', province: 'Ontario', postal_code:' M5M 1W4', country: 'canada'}})
d = BookClub.create({name: 'The Biography Club ', description: 'We read and talk about the best Biography books. If you love Biography books too join us every wednesday from 5:00 -7:00!', genre: 'Biography', address: {address_line1: '301 Front St W', city: 'Toronto', province: 'Ontario', postal_code:'M5V 2T6', country: 'canada'}})
e = BookClub.create({name: 'The Science Club ', description: 'We read and talk about the best Science books. If you love Science books too join us every Thursday from 8:00 -9:00!', genre: 'Science', address: {address_line1: '48 St Clair Ave W ', city: 'Toronto', province: 'Ontario', postal_code:' M4V 2Z2', country: 'canada'}})
f = BookClub.create({name: 'The Non fiction Club ', description: 'We read and talk about the best non fiction books. If you love non fiction books too join us every Friday from 1:00 -3:00!', genre: 'Non Fiction', address: {address_line1: '1974 Queen St E ', city: 'Toronto', province: 'Ontario', postal_code:' M4L 1H8', country: 'canada'}})



a.users << u3
a.admins << u1

b.users << u3
b.admins << u1

c.users << u1
c.admins << u2

d.users << u1
d.admins << u2

e.users << u2
e.admins << u3

f.users << u2
f.admins << u3