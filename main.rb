class Game
    attr_reader :MAX_TURNS, :COLORS
    attr_accessor :game, :colors, :player, :turn, :solution, :win
    MAX_TURNS = 8
    COLORS = ["Red", "Blue", "White", "Green", "Yellow"]
    def initialize
        @player = Player.new
        @turn = 1
        @solution = []
        @win = false
    end
    def decide_solution
        x = 1
        while x < 5 do
         num = rand(4)
         @solution.push(COLORS[num])
         x += 1
        end
        puts @solution
    end
    def display_current
        if @player.guess.length == 1
        puts "Your current Choices - Slot 1: #{@player.guess[0]}"
        elsif @player.guess.length == 2
            puts "Your current Choices - Slot 1: #{@player.guess[0]}, Slot 2: #{@player.guess[1]}"
        elsif @player.guess.length == 3
            puts "Your current Choices - Slot 1: #{@player.guess[0]}, Slot 2: #{@player.guess[1]}, Slot 3: #{@player.guess[2]}"
        elsif @player.guess.lenth == 4
            puts "Your current Choices - Slot 1: #{@player.guess[0]}, Slot 2: #{@player.guess[1]}, Slot 3: #{@player.guess[2]}, Slot 3: #{@player.guess[3]}"
        end
    end
    def start
        decide_solution
        puts "Welcome to the game! The goal is to guess the combo of the 4 colors. The options are red = 0, blue = 1, white = 2, green = 3, and yellow = 4"
        
    end
    def begin_game
        while @turn < 9 || @win == false
            x = 1
            while x < 5 
                puts "Please enter a number between 0-4(0 = Red, 1 = Blue, 2 = White, 3 = Green, 4 = Yellow) for slot 1"
                input = gets
                if input != "0" || input != "1" || input != "2" || input != "3" || input != "4"
                    while input != "0" || input != "1" || input != "2" || input != "3" || input != "4"
                        puts "Error: You need to input either 0, 1, 2, 3 or 4"
                        input = gets
                    end
                end
                puts "You selected #{COLORS[input.to_i]}"
                @player.guess.push(COLORS[input.to_i])
                x += 1
            end
        end
    end
end

class Player
    attr_accessor :guess
    def initialize
        @guess = []
        @guess_turns = []
    end
end
def play
    @game = Game.new
    @game.start
    @game.begin_game
end
play