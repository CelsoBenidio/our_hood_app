require "open-uri"
puts "Cleaning database!"
Store.destroy_all
Product.destroy_all
Category.destroy_all

puts "everythings deleted"
store = Store.create!(name: "le wagon", address:"İstanbul")
le_wagon_istanbul = Store.create!(name: "Le Wagon", address:"Dibek Sk. No:15 Hacımimi 34425 Beyoğlu/İstanbul, Turkey", description: "Change your life, learn to code.
Through immersive coding bootcamps, Le Wagon teaches you the skills and entrepreneurial mindset you need to thrive - now and in the future.")
file = URI.open('https://res.cloudinary.com/dbjtqhjxi/image/upload/v1586955844/images/LeWagonIstanbul/LeWagonIstanbulNumber1_qrrfmo.jpg')
le_wagon_istanbul.photo.attach(io: file, filename: 'le_wagon_istanbul.png', content_type: 'image/png')

galip_dede_harsta = Store.create!(name: "Galip Dede Harsta", address: "Şahkulu, İstanbul",
description: "Handmade clothing from the Savkin family. 4 generations of artisans creating one of the kind clothes.")
file = URI.open('https://res.cloudinary.com/dbjtqhjxi/image/upload/v1586955830/images/Galip%20Dede%20Harsta/GalipOutside_wfiyna.png')
galip_dede_harsta.photo.attach(io: file, filename: 'galip_dede_harsta.png', content_type: 'image/png')

galata_grand_bazaar = Store.create!(name: "Galata Grand Bazaar", address: "Müeyyedzade, İstanbul", description:"We bring together many fine artisans to show their creations. All brought to you by Edvar, see picture of our leader.")
file = URI.open('https://res.cloudinary.com/dbjtqhjxi/image/upload/v1586955838/images/Galata%20Grand%20Bazaar/BazaarOutside_zbl6mx.png')
galata_grand_bazaar.photo.attach(io: file, filename: 'galata_grand_bazaar.png', content_type: 'image/png')

paris_texas = Store.create!(name: "Paris Texas", address: "Bereketzade, İstanbul", description: "Bringing the best of Paris and Texas together to create Istanbul fusion")
file = URI.open('https://res.cloudinary.com/dbjtqhjxi/image/upload/v1586955844/images/ParisTexas/ParisTexasOutside_efzzzd.png')
paris_texas.photo.attach(io: file, filename: 'paris_texas.png', content_type: 'image/png')

categories = %w(watches jewelleries sunglasses food vintage accessories )
categories.each do |category|
  Category.create!(name:category)
end

puts "seeds are created"
