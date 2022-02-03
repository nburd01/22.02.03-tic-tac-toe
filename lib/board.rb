class Board
    attr_accessor :game_board
  
    def initialize
      @game_board = Array.new(9) { "." }
    end
  
    def draw_game_board
      puts "    A | B | C"
      puts
      puts " 1  #{game_board[0]} | #{game_board[1]} | #{game_board[2]}"
      puts "   -----------"
      puts " 2  #{game_board[3]} | #{game_board[4]} | #{game_board[5]}"
      puts "   -----------"
      puts " 3  #{game_board[6]} | #{game_board[7]} | #{game_board[8]}"
    end
  
    def play_case(param_glyph, param_letter, param_number)
      coord = -1
      case param_letter.upcase
      when 'A'
        case param_number.to_i
        when 1
          coord = 0
        when 2
          coord = 3
        when 3
          coord = 6
        end
      when 'B'
        case param_number.to_i
        when 1
          coord = 1
        when 2
          coord = 4
        when 3
          coord = 7
        end
      when 'C'
        case param_number.to_i
        when 1
          coord = 2
        when 2
          coord = 5
        when 3
          coord = 8
        end
      end
      change_case_board(param_glyph, coord)
    end
  
    def change_case_board(param_glyph, param_coord)
      @game_board[param_coord] = param_glyph
    end
  
    def is_free_case?(param_letter, param_number)
      free = false
      coord = -1
      case param_letter.upcase
      when 'A'
        case param_number.to_i
        when 1
          if @game_board[0] == "."
            free = true
          end
        when 2
          if @game_board[3] == "."
            free = true
          end
        when 3
          if @game_board[6] == "."
            free = true
          end
        end
      when 'B'
        case param_number.to_i
        when 1
          if @game_board[1] == "."
            free = true
          end
        when 2
          if @game_board[4] == "."
            free = true
          end
        when 3
          if @game_board[7] == "."
            free = true
          end
        end
      when 'C'
        case param_number.to_i
        when 1
          if @game_board[2] == "."
            free = true
          end
        when 2
          if @game_board[5] == "."
            free = true
          end
        when 3
          if @game_board[8] == "."
            free = true
          end
        end
      end
      return free
    end
  end