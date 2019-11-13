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
Board.destroy_all

# Sport.create(name:'default')
# Team.create(name:'default', password: 'default', sport_id: 2)
# Usertype.create(usertype: 'default')


hockey = Sport.create(name: 'hockey')

spencer = Team.create(name: 'Spencer W3s', password: 'aaaa', sport: hockey, colour1: '#B01943', colour2: '#2299E2')
surbiton = Team.create(name: 'Surbiton W5s', password: 'bbbb', sport: hockey, colour1: '#941c3f', colour2: '#fff')
spencer5s = Team.create(name: 'Spencer W5s', password: '5555', sport: hockey, colour1: '#B01943', colour2: '#2299E2')
testTeam = Team.create(name: 'Test team', password: 'test', sport: hockey)

board1 = Board.create(coordinates: "[218, 63, 179, 140, 257, 140, 25, 197, 392, 197, 218, 240, 140, 284, 304, 284, 218, 388, 68, 388, 365, 387]", name: "2019-2020 formation", team: spencer)
board2 = Board.create(coordinates: "[218, 63, 218, 146, 218, 312, 77, 183, 343, 183, 218, 218, 114, 284, 318, 284, 218, 388, 68, 388, 365, 387]", name: "2018-2019 formation", team: spencer)
board3 = Board.create(coordinates: "[red, [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], blue, [10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35]]", name: "* Default Board", team: spencer)
board4 = Board.create(coordinates: "[red, [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], blue, [10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35, 10, 35]]", name: "* Default Board", team: surbiton)
board5 = Board.create(coordinates: "[50, 50, 60, 60, 70, 70]", name: "board five", team: spencer)

tegan = Player.create(team: spencer, name: 'Tegan Sims')
muir = Player.create(team: spencer, name: 'Sarah Muir')
daria = Player.create(team: spencer, name: 'Daria McBride')
brady = Player.create(team: spencer, name: 'Rachel Brady')
elder = Player.create(team: spencer, name: 'Sophie Elder')
myra = Player.create(team: spencer, name: 'Myra Sae-Heng')
nat = Player.create(team: spencer, name: 'Nat Allen')
claire = Player.create(team: spencer, name: 'Claire Hughes')
izzy = Player.create(team: spencer, name: 'Izzy Shaw')
genie = Player.create(team: spencer, name: 'Genie Younger')
fran = Player.create(team: spencer, name: 'Fran le Pan')
jen = Player.create(team: spencer, name: 'Jen Slinn')
becs = Player.create(team: spencer, name: "Becs HR")
hazza = Player.create(team: spencer, name: 'Harriet Price')
maddie = Player.create(team: spencer, name: 'Maddie BJ')
younger = Player.create(team: spencer, name: 'Sophie Younger')

bob = Player.create(team: surbiton, name: 'Bob McBobberson')
craig = Player.create(team: surbiton, name: 'Craig McCraigerson')

jess = Player.create(team: spencer5s, name: 'Jess Pates')
sandra = Player.create(team: spencer5s, name: 'Sandra Forbes')

ocsA = Game.create(team: spencer, date: DateTime.new(2019,9,28,10) , venue: 'Thames Ditton KT7 0HB', score: '3-3', opposition: 'OCs', completed: true, mom_winner: 'Daria McBride, Myra Hae-Seng, Sophie Junior' , dod_winner: 'Nat Allen')
wokingH = Game.create(team: spencer, date: DateTime.new(2019,10,5,12) , venue: 'Fieldview', opposition: 'Woking', score: '3-0', completed: true, mom_winner: 'Maddie BJ', dod_winner: 'Tegan Sims')
richmondA = Game.create(team: spencer, date: DateTime.new(2019,10,12,14,30) , venue: 'Quintin Hogg Memorial Ground', opposition: 'Richmond', score: '3-1', completed: true, mom_winner: 'Genie Younger', dod_winner: 'Rachel Brady')
guildfordA = Game.create(team: spencer, date: DateTime.new(2019,11,2,11,45) , venue: 'Broadwater School', opposition: 'Guildford', score: '0-4', completed: true, mom_winner: 'Genie Younger', dod_winner: 'Rachel Brady')
sunburyH = Game.create(team: spencer, date: DateTime.new(2019,11,9,15) , venue: 'Fieldview', opposition: 'Sunbury')
edsA = Game.create(team: spencer, date: DateTime.new(2019,11,16,10) , venue: 'Honor Oak Park', opposition: 'London Eds')
thdH = Game.create(team: spencer, date: DateTime.new(2019,11,23,13,30) , venue: 'Fieldview', opposition: 'THD')
acciesA = Game.create(team: spencer, date: DateTime.new(2019,11,30,14,30) , venue: 'CoL Academy Southwark', opposition: 'Accies')
surbitonH = Game.create(team: spencer, date: DateTime.new(2019,12,7,11,30) , venue: 'Harris Academy', opposition: 'Surbiton')

# to retrieve date:
# Game.last.date.to_date
# Game.last.date.to_s(:time)

Scorer.create(game: ocsA, player: myra)
Scorer.create(game: ocsA, player: fran)
Scorer.create(game: ocsA, player: younger)
Scorer.create(game: wokingH, player: claire) 
Scorer.create(game: wokingH, player: younger)
Scorer.create(game: wokingH, player: maddie)
Scorer.create(game: richmondA, player: jen)
Scorer.create(game: richmondA, player: maddie)
Scorer.create(game: richmondA, player: younger)
Scorer.create(game: sunburyH, player: claire)
Scorer.create(game: sunburyH, player: genie)


Assist.create(game: ocsA, player: becs)
Assist.create(game: ocsA, player: genie)
Assist.create(game: ocsA, player: nat)
Assist.create(game: wokingH, player: jen)
Assist.create(game: wokingH, player: myra)
Assist.create(game: wokingH, player: daria)
Assist.create(game: richmondA, player: maddie)
Assist.create(game: richmondA, player: nat)
Assist.create(game: richmondA, player: claire)
Assist.create(game: sunburyH, player: nat)
Assist.create(game: sunburyH, player: izzy)

player = Usertype.create(usertype: 'player')
coach = Usertype.create(usertype: 'coach')
supporter = Usertype.create(usertype: 'supporter')


# needs more user seed data
teganUser = User.create(team: spencer, email: 'tegan@tegan.com', password: 'tegan', admin: false, usertype: player, player: tegan)
dariaUser = User.create(team: spencer, email: 'daria@daria.com', password: 'daria', admin: true, usertype: player, player: daria)
muirUser = User.create(team: spencer, email: 'muir@muir.com', password: 'muir', admin: false, usertype: player, player: muir)
jenUser = User.create(team: spencer, email: 'jen@jen.com', password: 'jen', admin: false, usertype: player, player: jen)
maddiesDadUser = User.create(team: spencer, email: 'maddiesdad@maddiesdad.com', password: 'maddiesdad', admin: false, usertype: supporter)
avtarUser = User.create(team: spencer, email: 'avtar@avtar.com', password: 'avtar', admin: false, usertype: coach)
jessUser = User.create(team: spencer5s, email: 'jess@jess.com', password: 'jess', admin: true, usertype: player)
testUser = User.create(team: testTeam, email: 'test@test.com', password: 'test', admin: true, usertype: player)

# Player.all.select{|p| p.id == User.first.player.to_i}

mom = Category.create(category: 'Man of the Match')
dod = Category.create(category: 'Dick of the Day')
fine = Category.create(category: 'Fine')

# needs more user seed data
Vote.create(user: teganUser, game: ocsA, player: nat, category: mom, comment: "celebrations")
Vote.create(user: dariaUser, game: ocsA, player: nat, category: mom, comment: "celebrating a disallowed goal")
Vote.create(user: maddiesDadUser, game: ocsA, player: daria, category: mom, comment: "anyone but nat")
Vote.create(user: maddiesDadUser, game: ocsA, player: brady, category: dod, comment: "Nearly getting sent off")

Vote.create(user: teganUser, game: sunburyH, player: elder , category: mom, comment: "lovely forays into the opposition half")
Vote.create(user: dariaUser, game: sunburyH, player: muir, category: mom, comment: "kept us in it")
Vote.create(user: avtarUser, game: sunburyH, player: elder, category: mom, comment: "solid as a rock at the back")
Vote.create(user: muirUser, game: sunburyH, player: muir, category: mom, comment: "controlled the game")
Vote.create(user: maddiesDadUser, game: sunburyH, player: genie, category: mom, comment: "created a gazillion chances!")
Vote.create(user: jenUser, game: sunburyH, player: muir, category: mom, comment: "She made me vote for her")

Vote.create(user: teganUser, game: sunburyH, player: claire, category: dod, comment: "Forgetting half her kit")
Vote.create(user: dariaUser, game: sunburyH, player: claire, category: dod, comment: "Making her kids watch in the pouring rain")
Vote.create(user: jenUser, game: sunburyH, player: tegan, category: dod, comment: "pressups. Or lack of")
Vote.create(user: maddiesDadUser, game: sunburyH, player: elder, category: dod, comment: "For taking a shot that ended up going off the sideline, not the backline")
Vote.create(user: avtarUser, game: sunburyH, player: jen, category: dod, comment: "Umpiring in the rain")
Vote.create(user: muirUser, game: sunburyH, player: claire, category: dod, comment: "Not knowing whether aubergines should be peeled or not")


Note.create(user: teganUser, game: ocsA, comment: 'They like to go back to injector on shorts', public: true)
Note.create(user: teganUser, game: guildfordA, comment: "Let's never talk about this game again", public: true)
Note.create(user: teganUser, game: sunburyH, comment: 'Nice lobbed goal from Claire', public: true)
Note.create(user: teganUser, game: sunburyH, comment: 'Think we need to change our formation on shorts', public: true)
# TOP SCORER FOR A PARTICULAR GAME
    # array = Vote.all.select{|v| v.game == 1}.map{|v| v.player_id}
    # array.sort_by { |u| array.count(u) }.reverse 