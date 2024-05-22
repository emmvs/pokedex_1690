Pokemon.destroy_all
Poketrainer.destroy_all

kenta = Poketrainer.create(name: 'Kenta', country: "Vatikan 🇻🇦", age: 27)
hugo = Poketrainer.create(name: 'Hugo', country: "Maltaa 🇲🇹", age: 60)
joachim = Poketrainer.create(name: 'Joachim (aka siuu)', country: "San Marino 🇸🇲", age: 6)

Pokemon.create(name: 'pikachu', power: 'electric', poketrainer_id: joachim.id)
Pokemon.create(name: 'snorlax', power: 'normal', poketrainer_id: hugo.id)
Pokemon.create(name: 'charmander', power: 'fire', poketrainer_id: kenta.id)
Pokemon.create(name: 'martin', power: 'javascript & psy', poketrainer_id: kenta.id)


puts "Created #{Poketrainer.count} poke trainer 🇲🇹🇻🇦🇸🇲"
puts "Created #{Pokemon.count} pokemon 🐸🦄🦍"
