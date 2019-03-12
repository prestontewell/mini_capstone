# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# product3 = Product.new(name: 'Medium Shield', price: '7gp', image_url: 'nil', description: 'Wooden shield typically human sized')

# product3.save

supplier = Supplier.new(name: 'Helena of Shadowdale', email: 'helena.s@faerunmail.com', phone: 555.3212)

supplier.save

supplier = Supplier.new(name: 'Fezzick the Loud', email: 'fezzick.l@faerunmail.com', phone: 555.0001)

supplier.save

supplier = Supplier.new(name: 'Cordryn of Waterdeep', email: 'cordryn.w@Waterdeep.net', phone: 555.0001)

supplier.save
