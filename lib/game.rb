require 'bundler'
Bundler.require

class Game
    attr_accessor :player, :status

    def initialize
        @name = name
        @board = board
        @current_player = current_player
        @status = status
    end

    def starter_player
        if compute_order == 1
            starter_player == player1
        else 
            player2 == starter_player
        end 
    end

    def compute_order
        return rand(1..2)
    end

    def player_symbol
        if compute_symbol == 1
            starter_player == "x"
        else
            starter_player == "o"
        end
    end

    def compute_symbol
        return rand(1..2)
    end

    puts "Le joueur commence la partie avec le symbole"
end



