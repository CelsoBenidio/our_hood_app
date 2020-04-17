require "open-uri"
puts "Cleaning database!"
User.destroy_all
Store.destroy_all
Product.destroy_all
Category.destroy_all

puts "everythings deleted"

puts "creating new user for stores"
user = User.create!(email: "admin@ourhood.com", password: "123456", name: "admin", address: "LW Istanbul", admin: true)

puts "Creating stores"
le_wagon_istanbul = Store.create!(name: "Le Wagon", address:"Dibek Sk. No:15 Hacımimi 34425 Beyoğlu/İstanbul, Turkey",
  description: "Change your life, learn to code.
Through immersive coding bootcamps, Le Wagon teaches you the skills and entrepreneurial mindset you need to thrive - now and in the future.",user: user)
file = URI.open('https://res.cloudinary.com/dbjtqhjxi/image/upload/v1586955844/images/LeWagonIstanbul/LeWagonIstanbulNumber1_qrrfmo.jpg')
le_wagon_istanbul.photo.attach(io: file, filename: 'le_wagon_istanbul.png', content_type: 'image/png')

galip_dede_harsta = Store.create!(name: "Galip Dede Harsta", address: "Şahkulu, İstanbul",user: user,
description: "Handmade clothing from the Savkin family. 4 generations of artisans creating one of the kind clothes.")
file = URI.open('https://res.cloudinary.com/dbjtqhjxi/image/upload/v1586955830/images/Galip%20Dede%20Harsta/GalipOutside_wfiyna.png')
galip_dede_harsta.photo.attach(io: file, filename: 'galip_dede_harsta.png', content_type: 'image/png')

galata_grand_bazaar = Store.create!(name: "Galata Grand Bazaar",user: user, address: "Müeyyedzade, İstanbul", description:"We bring together many fine artisans to show their creations. All brought to you by Edvar, see picture of our leader.")
file = URI.open('https://res.cloudinary.com/dbjtqhjxi/image/upload/v1586955838/images/Galata%20Grand%20Bazaar/BazaarOutside_zbl6mx.png')
galata_grand_bazaar.photo.attach(io: file, filename: 'galata_grand_bazaar.png', content_type: 'image/png')

paris_texas = Store.create!(name: "Paris Texas",user: user, address: "Bereketzade, İstanbul", description: "Bringing the best of Paris and Texas together to create Istanbul fusion")
file = URI.open('https://res.cloudinary.com/dbjtqhjxi/image/upload/v1586955844/images/ParisTexas/ParisTexasOutside_efzzzd.png')
paris_texas.photo.attach(io: file, filename: 'paris_texas.png', content_type: 'image/png')

#New stores
tuncer_gift_shop = Store.create!(name: "Tuncer Gift Shop",user: user, address: "Istanbul,Turkey", description:"Tuncer Gift Shop is located in Sultanahmet since 2000s.
  At the beginning, we started working just on the street and just with one person who is our founder.
  After a while we expanded our job and we opened first showroom in 2008. When we came to 2012, we have
  five showrooms in Istanbul and nearly 15 team members.We believe that customers are special; so we
  made each showroom special by itself. We have two showrooms for ceramics, one shop for special home
  textile and carpets and one showroom is just for selling jewellery. Our products are also special only
  for our showrooms and you cannot find the same product in any other shops")
  file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/07/a3/a7/ab/tuncer-gift-shop.jpg')
  tuncer_gift_shop.photo.attach(io: file, filename: 'tuncer_gift_shop.png', content_type: 'image/png')


aslan_gift_shop = Store.create!(name: "Aslan Gift Shop",user: user, address: "Istanbul, Turkey", description:"We Are Selling High Quality Souvenirs For Our Visitors
  To Remind Good Memories Of Istanbul Or Giving Their Friends As A Gift. Nargiles, Nazars, Mugs, Bracel
  ets And Every Kind Of Turkish Themed Gifts Are Being Sold In Our Fancy Shop In Sirkeci/istanbul.")
  file = URI.open('https://q-cf.bstatic.com/images/hotel/max1024x768/186/186682383.jpg')
  aslan_gift_shop.photo.attach(io: file, filename: 'aslan_gift_shop.png', content_type: 'image/png')

tree_of_life_ceramics_and_gift_shop = Store.create!(name: "Tree of Life Ceramics & Gift Shop",user: user,
  address: "Binbirdirek Meydani Sokak, Istanbul Turkey", description:"Tree of Life
  Ceramics & Gift Shop is newly open and provides new interesting products with an excellent customer
  service")
  file = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/da/db/ff/tree-of-life-ceramics.jpg')
  tree_of_life_ceramics_and_gift_shop.photo.attach(io: file, filename: 'tree_of_life_ceramics_and_gift
  _shop.png', content_type: 'image/png')

ruby_ceramics_and_gift_shop = Store.create!(name: "Ruby Ceramics & Gift Shop",user: user, address: "Boyaci Ahmet
  Sok. No:22/A, Istanbul Turkey", description:"One of the best ceramics stores in Istanbulheritage_nomadic_art_gallery")
  file = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/ee/d8/25/ruby-ceramics-gift-shop.jpg')
  ruby_ceramics_and_gift_shop.photo.attach(io: file, filename: 'ruby_ceramics_and_gift_shop.png', content_type: 'image/png')

heritage_nomadic_art_gallery = Store.create!(name: "Heritage Nomadic Art Gallery",user: user, address: "Caferiye Sok, Istanbul ,Turkey", description:"Discover the magic world of kilims and carpets. Awide range of exceptional villa
  ge rugs, individually handmade with natural dyes and the finest handspun wool.")
  file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/05/0e/84/c4/heritage-nomadic-art.jpg')
  heritage_nomadic_art_gallery.photo.attach(io: file, filename: 'heritage_nomadic_art_gallery.png', content_type: 'image/png')

rosemary_spice_and_gift = Store.create!(name: "Rosemary spice & gift",user: user, address: "kaleci Sokak, Istanbul,Turkey", description:"Dear customer our shop near by Sultanahmet mosque we have ceramics special plates and may gift almo
 st you can find everything about gift in our shop")
  file = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/00/ea/af/rosemary-spice-gift.jpg')
  rosemary_spice_and_gift.photo.attach(io: file, filename: 'rosemary_spice_and_gift.png', content_type: 'image/png')

galeria_rugs = Store.create!(name: "Galeria Rugs",user: user, address: "Taya Hatun Sk, Istanbul,Turkey",
  description:"Galeria Rugs was established in 2008. Its founder, Selcuk Orman, has extensive experience in carpets from all over
  the world having being a director for international carpet galleries and auction houses. Our purpose is to share the true exper
  ience and knowledge we have of hand woven carpets with enthusiasts and collectors around the world. Since the knowledge of this
  art form comes with education, we aim to share our knowledge about the intricate technical qualities and human stories behind
  this unique art.")
  file = URI.open('https://cdn.fodors.com/ee/files/slideshows/1-What-To-Buy-Istanbul-Rugs.jpg')
  galeria_rugs.photo.attach(io: file, filename: 'galeria_rugs.png', content_type: 'image/png')

sahaflar_carsisi = Store.create!(name: "Sahaflar Carsisi",user: user, address: "Istanbul 34430 Turkey", description:"This historic book bazaar
 was popular with famous writers of the 16th and 17th centuries. Today, it is one of the most known areas in the city to find rare
 and used books.")
  file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0d/c4/03/56/sahaflar-carsisi.jpg')
  sahaflar_carsisi.photo.attach(io: file, filename: 'sahaflar_carsisi.png', content_type: 'image/png')

last_shop_gift_shop = Store.create!(name: "Last Shop Gift Shop",user: user, address: "Istanbul, Karakoy, Turkey", description:"Cheeper than Grand Bazaar")
  file = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/66/4d/a1/last-shop-gift-shop.jpg')
  last_shop_gift_shop.photo.attach(io: file, filename: 'last_shop_gift_shop.png', content_type: 'image/png')

troy_rug_bazaar = Store.create!(name: "Troy Rug Store",user: user, address: "Arasta Bazaar no. 39 Sultanahmet, Istanbul Turkey", description:"Troy Rug Sto
  re is a long established seller of high quality modern and antique carpets, rugs, kilims and other nomadic art situated in the delightful Ara
  sta Bazaar in historic Istanbul. We stock pieces from all over Turkey, Iran and Afghanistan. We pride ourselves on a professional and hassle-
  free selling experience ensuring the customer is delighted with his or her purchase. There is never any obligation to buy and we welcome cust
  omers who want to browse.Fluent English, Turkish and German spoken.")
  file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/05/ab/8d/b8/troy-rug.jpg')
  troy_rug_bazaar.photo.attach(io: file, filename: 'troy_rug_bazaar.png', content_type: 'image/png')

puts "creatig categories"

categories = %w(watches jewelleries sunglasses food vintage accessories clothing arts crafts beauty tools sports&outdoors home&kitchen luggage giftcards  )
categories.each do |category|
  Category.create!(name:category)
end


puts "creating products"

mosaic_table_lamp_1 = Product.create!(name: "Mosaic Table Lamp Model 1", description: "Mosaic table lamp is excellent item to have it home.", store: aslan_gift_shop)
mosaic_table_lamp_2 = Product.create!(name: "Mosaic Table Lamp Model 2", description: "Mosaic table lamp is excellent item to have it home.", store: aslan_gift_shop)
mosaic_table_lamp_3 = Product.create!(name: "Mosaic Table Lamp Model 3", description: "Mosaic table lamp is excellent item to have it home.", store: aslan_gift_shop)
mosaic_table_lamp_4 = Product.create!(name: "Mosaic Table Lamp Model 4", description: "Mosaic table lamp is excellent item to have it home.", store: aslan_gift_shop)
mosaic_table_lamp_5 = Product.create!(name: "Mosaic Table Lamp Model 5", description: "Mosaic table lamp is excellent item to have it home.", store: aslan_gift_shop)
mosaic_table_lamp_6 = Product.create!(name: "Mosaic Table Lamp Model 6", description: "Mosaic table lamp is excellent item to have it home.", store: aslan_gift_shop)
prayer_beads_1 = Product.create!(name: "Andiz Tree Prayer Beads Model 1", description: "A bead is a small, decorative object that is formed in a variety of shapes and
 sizes of a material such as stone, bone, shell, glass, plastic, wood or pearl and with a small hole for threading or stringing.", store: heritage_nomadic_art_gallery)
prayer_beads_2 = Product.create!(name: "Andiz Tree Prayer Beads Model 2", description: "A bead is a small, decorative object that is formed in a variety of shapes and
 sizes of a material such as stone, bone, shell, glass, plastic, wood or pearl and with a small hole for threading or stringing.", store: heritage_nomadic_art_gallery)
prayer_beads_3 = Product.create!(name: "Andiz Tree Prayer Beads Model 3", description: "A bead is a small, decorative object that is formed in a variety of shapes and
 sizes of a material such as stone, bone, shell, glass, plastic, wood or pearl and with a small hole for threading or stringing.", store: heritage_nomadic_art_gallery)
prayer_beads_4 = Product.create!(name: "Andiz Tree Prayer Beads Model 4", description: "A bead is a small, decorative object that is formed in a variety of shapes and
 sizes of a material such as stone, bone, shell, glass, plastic, wood or pearl and with a small hole for threading or stringing.", store: heritage_nomadic_art_gallery)
prayer_beads_5 = Product.create!(name: "Andiz Tree Prayer Beads Model 5", description: "A bead is a small, decorative object that is formed in a variety of shapes and
 sizes of a material such as stone, bone, shell, glass, plastic, wood or pearl and with a small hole for threading or stringing.", store: heritage_nomadic_art_gallery)
prayer_beads_6 = Product.create!(name: "Andiz Tree Prayer Beads Model 6", description: "A bead is a small, decorative object that is formed in a variety of shapes and
 sizes of a material such as stone, bone, shell, glass, plastic, wood or pearl and with a small hole for threading or stringing.", store: heritage_nomadic_art_gallery)
prayer_beads_7 = Product.create!(name: "Andiz Tree Prayer Beads Model 7", description: "A bead is a small, decorative object that is formed in a variety of shapes and
 sizes of a material such as stone, bone, shell, glass, plastic, wood or pearl and with a small hole for threading or stringing.", store: heritage_nomadic_art_gallery)
turkish_tea_pot_model_no1 = Product.create!(name: "Turkish Teapot Model No1", description: "Turkish Tea Pots (Another name is Çaydanlık) are
  really important to brew perfect tea.", store: tuncer_gift_shop)
turkish_tea_pot_model_no2 = Product.create!(name: "Turkish Teapot Model No2", description: "Turkish Tea Pots (Another name is Çaydanlık) are
  really important to brew perfect tea.", store: last_shop_gift_shop)
turkish_tea_pot_model_no3 = Product.create!(name: "Turkish Teapot Model No3", description: "Turkish Tea Pots (Another name is Çaydanlık) are
  really important to brew perfect tea.", store: sahaflar_carsisi)
turkish_tea_pot_model_no4 = Product.create!(name: "Turkish Teapot Model No4", description: "Turkish Tea Pots (Another name is Çaydanlık) are
  really important to brew perfect tea.", store:rosemary_spice_and_gift)
ray_ban_sunglass_1 = Product.create!(name: "Ray-Ban RB2140 Model 1", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)
ray_ban_sunglass_2 = Product.create!(name: "Ray-Ban RB2140 Model 2", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)
ray_ban_sunglass_3 = Product.create!(name: "Ray-Ban RB2140 Model 3", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)
ray_ban_sunglass_4 = Product.create!(name: "Ray-Ban RB2140 Model 4", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)
ray_ban_sunglass_5 = Product.create!(name: "Ray-Ban RB2140 Model 5", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)
ray_ban_sunglass_6 = Product.create!(name: "Ray-Ban RB2140 Model 6", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)
ray_ban_sunglass_7 = Product.create!(name: "Ray-Ban RB2140 Model 7", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)
ray_ban_sunglass_8 = Product.create!(name: "Ray-Ban RB2140 Model 8", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)
ray_ban_sunglass_9 = Product.create!(name: "Ray-Ban RB2140 Model 9", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)
ray_ban_sunglass_10 = Product.create!(name: "Ray-Ban RB2140 Model 10", description: "The Original Ray-Ban Wayfarer features legendary G-15
  lenses, in both polarized and non-polarized options, perfect for both women and men. Made from high-quality glass, Ray-Ban lenses are prescription ready.", store:
  last_shop_gift_shop)












puts "seeds are created"


