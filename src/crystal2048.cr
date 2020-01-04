require "./game-manager"

module Crystal2048
    extend self

    VERSION = "0.0.0"

    def welcome
        puts "Welcome to my 2048 game\n"
    end
end

Crystal2048.welcome

game = Crystal2048::GameManager.new(4)
game.start_game
