# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Store.destroy_all
Product.destroy_all
Category.destroy_all

puts "everythings deleted"
store = Store.create!(name: "le wagon", address:"İstanbul")
categories = %w(watches jewelleries sunglasses food vintage accessories )
categories.each do |category|
  Category.create!(name:category)
end

puts "seeds are created"
