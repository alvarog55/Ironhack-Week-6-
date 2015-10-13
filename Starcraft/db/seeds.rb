Player.destroy_all
Match.destroy_all

puts "all is destroyed"
players = []

100.times do |p|
	players.push(Player.create(name: Faker::Name.name))
end



matches = Match.create([
 {winner_faction: 'Terrans',  loser_faction: 'Zerg',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Protoss',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Terrans',  loser_faction: 'Terrans',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Protoss',  loser_faction: 'Zerg',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Protoss',  loser_faction: 'Zerg',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Protoss',  loser_faction: 'Zerg',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Protoss',  loser_faction: 'Terrans',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Protoss',  loser_faction: 'Terrans',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Protoss',  loser_faction: 'Terrans',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Terrans',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Terrans',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Terrans',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Terrans',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Terrans',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Zerg',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Terrans',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Terrans',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Terrans',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Terrans',  loser_faction: 'Protoss',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Terrans',  loser_faction: 'Zerg',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample},
 {winner_faction: 'Terrans',  loser_faction: 'Zerg',	date: Faker::Date.forward(23), duration: Faker::Number.number(2), winner: players.sample, loser: players.sample}
])

