# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Seeding superheroes..."

# Hero Model
wolverine = Hero.create(name: "Logan", super_name: "Wolverine")
ironman = Hero.create(name: "Tony Stark", super_name: "Ironman")
catwoman = Hero.create(name: "Patience P", super_name: "Catwoman")
groot = Hero.create(name: "Tree", super_name: "Groot")
invisiblewoman = Hero.create(name: "Susan Storm", super_name: "Invisible woman")

# Power Model
claws = Power.create(name: "Adamantium Claws", description: "Indestructible bones via adamantium-infused skeleton, retractable adamantium claws, superhuman senses and animal-like attributes & master hand-to-hand combatant + martial artist.")
armor = Power.create(name: "Powered Iron Armor Suit", description: "Superhuman strength, speed, durability, agility, reflexes, senses, supersonic flight, energy repulsor and missile projection with regenerative life support.")
agility = Power.create(name: "The Cat", description: "Master martial artist and hand-to-hand combatant, skilled gymnast and acrobat, utilizing whips, sharp retractable claws and climbing pitons.")
psychokinesis = Power.create(name: "Psychokinesis", description: "Superhuman strength, stamina, endurance, durability, immortality, regenerative healing factor, elasticity/plasticity, and plant manipulation ability.")
invisble = Power.create(name: "Invisibility", description: "Self-invisibility, projective invisibility, invisible force field projection:generation of protective invisible shields & invisible energy constructs, power to control and manipulate objects, telepathic immunity & flight.")

# HeroPower Model
HeroPower.create(hero_id: wolverine.id, power_id: claws.id, strength: "Strong")
HeroPower.create(hero_id: ironman.id, power_id: armor.id, strength: "Average")
HeroPower.create(hero_id: catwoman, power_id: agility.id, strength: "Weak")
HeroPower.create(hero_id: groot.id, power_id: psychokinesis.id, strength: "Average")
HeroPower.create(hero_id: invisiblewoman.id, power_id: invisble, strength: "Strong")

puts "Superheroes seeded!"