require 'bundler'
Bundler.require

class BoardCase
    attr_accessor :value, :case_id


    def initialize(value, case_id)
        @value = value
        @case_id = case_id
    end

    #Le board case est un hash avec toutes les combinaisons possibles pour A B C & 1 2 3 
board = [a1, a2, a3, b1, b2, b3, c1, c2, c3]

end