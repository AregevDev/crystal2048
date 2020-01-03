require "./board"

module Crystal2048
    class GameManager
        property board : Board
        
        def initialize(boardSize : Int32)
            @board = Board.new(boardSize);
        end

        def start_game
            while true
                display_board
                print "\n> "
                input = gets
            end
        end

        def display_board
            puts @board
        end
    end
end
