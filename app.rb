require 'bundler'
Bundler.require

require_relative 'lib/Application'
require_relative 'lib/Board'
require_relative 'lib/BoardCase'
require_relative 'lib/Game'
require_relative 'lib/Player'
require_relative 'lib/Show'


Application #1.MAIN

    #if first game 
        puts "Souhaitez-vous jouer ?" #if true ==> Game
        #if !first_game => joueur_perdant = starter_player

        #Define players
        puts "Enter player1 name"
        puts "Enter player2 name"
        #Define who gets which symbol
        compute_symbol
        puts "#{Player1} gets #{symbol} and #{Player2} gets #{symbol}"
        #Define who starts 
        compute_order
        puts "#{player} starts the game with #{symbol}, good luck"

    #else =! first_game
        #Define that loser of previous game starts and keep other settings


    Game #1.1

        while #game =! victoire || game =! match_nul

            puts Show 
            puts "Voici le tableau"
            puts "#{starter_player}, à vous de jouer : "

            #*** Passon au joueur suivant *** => #Game
            player_perdant.plays(game)
            puts game_state
            break if game_tie || game_victory #condition de sortie de boucle
            player2.plays(game) #reprise du jeu avec l'autre joueur
        end
    end
end





#Board
#    BoardCase




#1. Demander noms => @name

#2. Dice => compute_order

#3. Définir les caractères de chaque joueur => compute_symbol

#4. Annoncer le @starter_player et le symbole => puts starter_player (honneur perdant) 

# *** START GAME ***

#while #game =! victoire || game =! match_nul

#    puts voici le tableau : #Show
    
    #*** Passon à la phase de jeu *** => #Game
#    player_perdant.plays(game)
#    puts game_state
#    break if game_tie || game_victory #condition de sortie de boucle
#    player2.plays(game) #reprise du jeu avec l'autre joueur
#end




