# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
le_wagon_istanbul = Store.create!(name: "le wagon", address:"Dibek Sk. No:15 Hacımimi 34425 Beyoğlu/İstanbul, Turkey", description: "Change your life, learn to code.
Through immersive coding bootcamps, Le Wagon teaches you the skills and entrepreneurial mindset you need to thrive - now and in the future.")

galip_dede_harsta = Store.create!(name: Galip Dede Harsta, address: "Şahkulu, Galip Dede Cd. No:64, 34421 Beyoğlu/İstanbul, Turkey",
description: "Handmade clothing from the Savkin family. 4 generations of artisans creating one of the kind clothes.")

galata_grand_bazaar = Store.create(name: Galata Grand Bazaar, address: "Müeyyedzade, Galip Dede Cd. No:95, 34425 Beyoğlu/İstanbul, Turkey", description:"We bring together many fine artisans to show their
  creations. All brought to you by Edvar, see picture of our leader.")

paris_texas = Store.create!(name: Paris Texas, address: "Bereketzade, Galata Tower, Galata Kulesi Sk., 34421 Beyoğlu/İstanbul, Turkey",
 description: "Bringing the best of Paris and Texas together to create Istanbul fusion")
