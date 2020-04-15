puts "Cleaning database!"

Store.destroy_all

le_wagon_istanbul = Store.create!(name: "Le Wagon", address:"Dibek Sk. No:15 Hacımimi 34425 Beyoğlu/İstanbul, Turkey", description: "Change your life, learn to code.
Through immersive coding bootcamps, Le Wagon teaches you the skills and entrepreneurial mindset you need to thrive - now and in the future.")

galip_dede_harsta = Store.create!(name: "Galip Dede Harsta", address: "Şahkulu, İstanbul",
description: "Handmade clothing from the Savkin family. 4 generations of artisans creating one of the kind clothes.")

galata_grand_bazaar = Store.create!(name: "Galata Grand Bazaar", address: "Müeyyedzade, İstanbul", description:"We bring together many fine artisans to show their
  creations. All brought to you by Edvar, see picture of our leader.")

paris_texas = Store.create!(name: "Paris Texas", address: "Bereketzade, İstanbul",
 description: "Bringing the best of Paris and Texas together to create Istanbul fusion")

puts "Finished!"
