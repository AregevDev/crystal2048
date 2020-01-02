require "./board"

module Crystal2048
  extend self

  VERSION = "0.0.0"

  def welcome
    puts "Welcome to my 2048 game"
  end
end

Crystal2048.welcome

gameBoard = Crystal2048::Board.new(4)
gameBoard.fill
puts gameBoard.to_s
