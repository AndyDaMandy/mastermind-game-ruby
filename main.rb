class Colors
    attr_reader :RED, :BLUE, :WHITE, :GREEN, :YELLOW
        RED = {:name => "Red", :number => 1}
        BLUE = {:name => "Blue", :number => 2}
        WHITE = {:name => "White", :number => 3}
        GREEN = {:name => "Green", :number => 4}
        YELLOW = {:name => "Yellow", :number => 5}
end

class Game
    attr_reader :MAX_TURN
    attr_accessor :game, :colors, :player, :turn, :solution
    MAX TURNS = 8
    def initialize
        @colors = Colors.new
        @player = Player.new
        @turn = 1
        @solution = []
    end
    def decide_solution
        x = 1
        while x < 4 do
         num = rand(4)
         @solution.push(@colors.number[num])
         x++
        end
        puts @solution
    end
    def start
        decide_solution
        puts "Welcome to the game! The goal is to guess the combo of the 4 colors. The options are red = 1, blue = 2, white = 3, green = 4, and yellow = 5"
    end
end

class Player
    attr_accessor :guess
    def initialize
        @guess = []
    end
end
def play
    @game = Game.new
    @game.start
end
play