require "open-uri"
puts "Cleaning database!"
Store.destroy_all
Product.destroy_all
Category.destroy_all

puts "everythings deleted"
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


#New stores
tuncer_gift_shop = Store.create!(name: "Tuncer Gift Shop", address: "Taya Hatun Sokak Sukran Han NO:C3
  Sirkeci, Istanbul 34110 Turkey", description:"Tuncer Gift Shop is located in Sultanahmet since 2000s.
  At the beginning, we started working just on the street and just with one person who is our founder.
  After a while we expanded our job and we opened first showroom in 2008. When we came to 2012, we have
  five showrooms in Istanbul and nearly 15 team members.We believe that customers are special; so we
  made each showroom special by itself. We have two showrooms for ceramics, one shop for special home
  textile and carpets and one showroom is just for selling jewellery. Our products are also special only
  for our showrooms and you cannot find the same product in any other shops")
  file = URI.open('')
  tuncer_gift_shop.photo.attach(io: file, filename: 'tuncer_gift_shop.png', content_type: 'image/png')


aslan_gift_shop = Store.create!(name: "Aslan Gift Shop", address: "Ankara Cad. Hocapasa Sk. Demir Han
  No:1 Sirkeci/Istanbul Sirkeci, Istanbul 34080 Turkey", description:"We Are Selling High Quality Souvenirs For Our Visitors
  To Remind Good Memories Of Istanbul Or Giving Their Friends As A Gift. Nargiles, Nazars, Mugs, Bracel
  ets And Every Kind Of Turkish Themed Gifts Are Being Sold In Our Fancy Shop In Sirkeci/istanbul.")
  file = URI.open('')
  aslan_gift_shop.photo.attach(io: file, filename: 'aslan_gift_shop.png', content_type: 'image/png')

tree_of_life_ceramics_and_gift_shop = Store.create!(name: "Tree of Life Ceramics & Gift Shop",
  address: "Binbirdirek Meydani Sokak no 3/A, Istanbul 34122 Turkey", description:"Tree of Life
  Ceramics & Gift Shop is newly open and provides new interesting products with an excellent customer
  service")
  file = URI.open('')
  tree_of_life_ceramics_and_gift_shop.photo.attach(io: file, filename: 'tree_of_life_ceramics_and_gift
  _shop.png', content_type: 'image/png')

tuncer_gift_shop = Store.create!(name: "", address: "", description:"")
  file = URI.open('')
  tuncer_gift_shop.photo.attach(io: file, filename: 'tuncer_gift_shop.png', content_type: 'image/png')

tuncer_gift_shop = Store.create!(name: "", address: "", description:"")
  file = URI.open('')
  tuncer_gift_shop.photo.attach(io: file, filename: 'tuncer_gift_shop.png', content_type: 'image/png')

tuncer_gift_shop = Store.create!(name: "", address: "", description:"")
  file = URI.open('')
  tuncer_gift_shop.photo.attach(io: file, filename: 'tuncer_gift_shop.png', content_type: 'image/png')

tuncer_gift_shop = Store.create!(name: "", address: "", description:"")
  file = URI.open('')
  tuncer_gift_shop.photo.attach(io: file, filename: 'tuncer_gift_shop.png', content_type: 'image/png')

tuncer_gift_shop = Store.create!(name: "", address: "", description:"")
  file = URI.open('')
  tuncer_gift_shop.photo.attach(io: file, filename: 'tuncer_gift_shop.png', content_type: 'image/png')

tuncer_gift_shop = Store.create!(name: "", address: "", description:"")
  file = URI.open('')
  tuncer_gift_shop.photo.attach(io: file, filename: 'tuncer_gift_shop.png', content_type: 'image/png')

tuncer_gift_shop = Store.create!(name: "", address: "", description:"")
  file = URI.open('')
  tuncer_gift_shop.photo.attach(io: file, filename: 'tuncer_gift_shop.png', content_type: 'image/png')



categories = %w(watches jewelleries sunglasses food vintage accessories )
categories.each do |category|
  Category.create!(name:category)
end




mosaic_table_lamp = Product.create!(name: "Mosaic Table Lamp", description: "Mosaic table lamp is excellent item to have it home.", store: le_wagon_istanbul)
turkish_tea_pot_model_no1 = Product.create!(name: "Turkish Teapot Stainless Steel Model No1", description: "Turkish Tea Pots (Another name is Çaydanlık) are really important to brew perfect tea.", store: le_wagon_istanbul)
turkish_tea_pot_model_no2 = Product.create!(name: "Turkish Teapot Stainless Steel Model No2", description: "Turkish Tea Pots (Another name is Çaydanlık) are really important to brew perfect tea.", store: le_wagon_istanbul)
turkish_tea_pot_model_no3 = Product.create!(name: "Turkish Teapot Stainless Steel Model No3", description: "Turkish Tea Pots (Another name is Çaydanlık) are really important to brew perfect tea.", store: le_wagon_istanbul)
turkish_tea_pot_model_no4 = Product.create!(name: "Turkish Teapot Stainless Steel Model No4", description: "Turkish Tea Pots (Another name is Çaydanlık) are really important to brew perfect tea.", store: paris_texas)
prayer_beads = Product.create!(name: "Andiz Tree Prayer Beads", description: "A bead is a small, decorative object that is formed in a variety of shapes and sizes of a material such as stone, bone, shell, glass, plastic, wood or pearl and with a small hole for threading or stringing.", store: galata_grand_bazaar)
puts "seeds are created"


