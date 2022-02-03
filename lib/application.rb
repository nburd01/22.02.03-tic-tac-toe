require 'bundler'
Bundler.require

require_relative 'Player'

class Application

    attr_accessor :name, :symbol

    def initialize
        @name = name
        @symbol = symbol
    end

    def perform
    end


    def symbol
        if compute_symbol == 1
            symbol == "X"
        else compute_symbol == 2
            symbol == "O"
        end
        puts "Le joueur #{name} commencera avec le symbol #{symbol}"
    end

        def compute_symbol
            return rand(1..2)
        end
    

    def order(name)
        puts "Le joueur #{name} commencera la partie"
    end

        def compute_order
            return rand(1..2)
        end
end

class LoserStarter < Application
end
    #if first game 
        #puts "Souhaitez-vous jouer ?" #if true ==> Game
        #if !first_game => joueur_perdant = starter_player

    #else =! first_game
        #Define that loser of previous game starts and keep other settings
