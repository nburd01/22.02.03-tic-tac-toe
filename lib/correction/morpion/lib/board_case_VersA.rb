#It is the case of the board game.
# Rôle de la classe "BoardCase" : Afficher une seule case.
class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  # GETTER - SETTER
  # States Case :
  # defaultCase => Case par défaut, c.à.d. case qui est vide.
  # player_X_case => Case du joueur X, c.à.d. case qui comprend déjà le visuel X.
  # player_O_case => Case du joueur O, c.à.d. case qui comprend déjà le visuel O.
  attr_accessor :defaultCase #=> GETTER + SETTER
  attr_writer #=> Ecriture pure -> SETTER
  attr_reader #=> Lecture pure -> GETTER

  def initialize
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    #=>           LIGNE = X       COLONNE = Y
    #=> @maVar_1 = Array.new(5) { 21 }   #=> [21, 21, 21, 21, 21]
    #=> @maVar_2 = Array.new(5) { Array.new(2) { 5 } }
    #=> [ 21, 21, 21, 21, 21 ]
    #=> [ [5, 5], [5, 5], [5, 5], [5, 5], [5, 5] ]
    #=> "JAVA" myArray = [8][8]

    @defaultCase = Array.new(5) { Array.new(5) { 0 }}
    #=>              X         Y
    #=> ligne n°1 : [0] -> [0, 0, 0]
    #=> ligne n°2 : [1] -> [0, 0, 0]
    #=> ligne n°3 : [2] -> [0, 0, 0]
  end

  #=> Donner l'illusion d'un tableau à 2D
  #=> alors qu'il est bien à 1D (sur une seule ligne).
  def fill_board_case
    #=> ligne n°1 : [0] -> [0, 0, 0]
    #=> ligne n°2 : [1] -> [0, 0, 0]
    #=> ligne n°3 : [2] -> [0, 0, 0]
    @unitCase.length.times do |x|      #=> Parcours des lignes.
      @unitCase[0].length.times do |y|    #=> Parcours de chaque case du tableau de la ligne.
        @unitCase[x][y].to_s
      end
    end
  end
  
end