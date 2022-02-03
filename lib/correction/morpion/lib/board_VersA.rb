require_relative "board_case"

# Rôle de la classe "Board" : Afficher le damier de jeu.
class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :gameBoard
  
  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @gameBoard = Array.new(3 * 5) { Array.new(3 * 5) { 9 }}
  end

  def draw_game_board
    @gameBoard.length.times do |x|
      @gameBoard[0].length.times do |y|
        print @gameBoard[x][y].to_s
      end
      puts
    end
  end

end