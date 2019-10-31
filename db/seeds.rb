# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# checking the dev branch works

Note.destroy_all
Vote.destroy_all
Category.destroy_all
User.destroy_all
Usertype.destroy_all
Assist.destroy_all
Scorer.destroy_all
Game.destroy_all
Player.destroy_all
Team.destroy_all
Sport.destroy_all



hockey = Sport.create(name: 'hockey')

spencer = Team.create(name: 'Spencer W3s', password_digest: 'aaaa', sport: hockey, colour1: '#B01943', colour2: '#2299E2')

Player.create(team: spencer, name: 'Tegan Sims')
Player.create(team: spencer, name: 'Sarah Muir')
Player.create(team: spencer, name: 'Daria McBride')
Player.create(team: spencer, name: 'Rachel Brady')
Player.create(team: spencer, name: 'Sophie Elder')
Player.create(team: spencer, name: 'Myra Hae-Seng')
Player.create(team: spencer, name: 'Nat Allen')
Player.create(team: spencer, name: 'Claire Hughes')
Player.create(team: spencer, name: 'Izzy Shaw')
Player.create(team: spencer, name: 'Genie Younger')
Player.create(team: spencer, name: 'Fran le Pan')
Player.create(team: spencer, name: 'Jen Slinn')
Player.create(team: spencer, name: "Becs HR")
Player.create(team: spencer, name: 'Harriet Price')
Player.create(team: spencer, name: 'Maddie BJ')
Player.create(team: spencer, name: 'Sophie Younger')

Game.create(team: spencer, date: DateTime.new(2019,9,28,10) , venue: 'Thames Ditton KT7 0HB', score: '3-3', opposition: 'OCs', completed?: true)
Game.create(team: spencer, date: DateTime.new(2019,10,5,12) , venue: 'Fieldview', opposition: 'Woking', score: '3-0', completed?: true)
Game.create(team: spencer, date: DateTime.new(2019,10,12,14,30) , venue: 'Quintin Hogg Memorial Ground', opposition: 'Richmond', score: '3-1', completed?: true)
Game.create(team: spencer, date: DateTime.new(2019,11,2,11,45) , venue: 'Broadwater School', opposition: 'Guildford')
Game.create(team: spencer, date: DateTime.new(2019,11,9,15) , venue: 'Fieldview', opposition: 'Sunbury')
Game.create(team: spencer, date: DateTime.new(2019,11,16,10) , venue: 'Honor Oak Park', opposition: 'London Eds')
Game.create(team: spencer, date: DateTime.new(2019,11,23,13,30) , venue: 'Fieldview', opposition: 'THD')
Game.create(team: spencer, date: DateTime.new(2019,11,30,14,30) , venue: 'CoL Academy Southwark', opposition: 'Accies')
Game.create(team: spencer, date: DateTime.new(2019,12,7,11,30) , venue: 'Harris Academy', opposition: 'Surbiton')

# to retrieve date:
# Game.last.date.to_date
# Game.last.date.to_s(:time)

Scorer.create(game_id: 1, player_id: 6)
Scorer.create(game_id: 1, player_id: 11)
Scorer.create(game_id: 1, player_id: 16)
Scorer.create(game_id: 2, player_id: 8) 
Scorer.create(game_id: 2, player_id: 15)
Scorer.create(game_id: 2, player_id: 16)
Scorer.create(game_id: 3, player_id: 12)
Scorer.create(game_id: 3, player_id: 15)
Scorer.create(game_id: 3, player_id: 16)

player = Usertype.create(usertype: 'player')
coach = Usertype.create(usertype: 'coach')
supporter = Usertype.create(usertype: 'supporter')


# needs more user seed data
User.create(team: spencer, email: 'tegan@tegan.com', password: 'tegan', admin?: false, usertype: player, player: 1)
User.create(team: spencer, email: 'daria@daria.com', password: 'daria', admin?: true, usertype: player, player: 3)
User.create(team: spencer, email: 'maddiesdad@maddiesdad.com', password: 'maddiesdad', admin?: false, usertype: supporter)
User.create(team: spencer, email: 'avtar@avtar.com', password: 'avtar', admin?: false, usertype: coach)
# Player.all.select{|p| p.id == User.first.player.to_i}

mom = Category.create(category: 'Man of the Match')
dod = Category.create(category: 'Dick of the Day')
fine = Category.create(category: 'Fine')

# needs more user seed data
Vote.create(user_id: 1, game_id: 1, player_id: 7, category: mom, comment: "celebrations")
Vote.create(user_id: 2, game_id: 1, player_id: 7, category: mom, comment: "celebrating a disallowed goal")
Vote.create(user_id: 3, game_id: 1, player_id: 2, category: mom, comment: "anyone but nat")
Vote.create(user_id: 3, game_id: 1, player_id: 5, category: dod, comment: "Nearly getting sent off")

Note.create(user_id: 1, game_id: 1, comment: 'They like to go back to injector on shorts', public?: true)

 

# TOP SCORER FOR A PARTICULAR GAME
    # array = Vote.all.select{|v| v.game_id == 1}.map{|v| v.player_id}
    # array.sort_by { |u| array.count(u) }.reverse 