class Player
    attr_accessor :name, :game_piece,
    def initialize(name, game_piece)
        @name = name
        @game_piece = game_piece    
    end
    @@player_counter = 0
    def self.create_player
        @@player_counter += 1
        puts "Hi Player #{@@player_counter}, What is your name?";
        name = gets.chomp;
        puts "#{name}, what letter would you like to represent you?";
        game_piece = gets.chomp;
        Player.new(name, game_piece)
    end
    def start_game
        puts "Ready, Set, Go!"
    end
end

player_1 = Player.create_player.inspect;
player_2 = Player.create_player.inspect;

puts player_1
puts player_2
