class TicTacToe 
  attr_accessor :game_board
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @board = [1,2,3,4,5,6,7,8,9]
    start_game
  end

  def start_game
    puts "Player 1 is #{@player_1}"
    puts "Player 2 is #{@player_2}"
    play
  end

  def welcome
    row1 = "==============="
    row2 = "===TicTacToe==="
    puts row1
    puts row1
    puts row2
    puts row1
    puts row1
  end

  def game_board
    welcome
    row1 = "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    row2 = "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    row3 = "#{@board[6]} | #{@board[7]} | #{@board[8]}"
    divider = "--+---+--"
    puts row1
    puts divider
    puts row2
    puts divider
    puts row3
  end

  def play 
    current_player = @player_1
    game_board
    puts "#{current_player} which spot would you like to place your token at?"
    choice = gets.chomp.to_i
    @board[choice -1] = 'X'
    game_board
    current_player == @player_1 ? @player_2 : @player_1
    play
    # Player 1 goes first
    # Player 1 Selects a space
    # That space [x-1] in the @board is replaced by their token
    # Reprint game_board
  end  
end

class Player < TicTacToe
  attr_accessor :name, :game_piece
  @@player_counter = 0;

  def initialize(name, game_piece)
    @name = name
    @game_piece = game_piece
  end
  
  def self.create_player
    @@player_counter += 1
    puts "Hi Player #{@@player_counter}, What is your name?"
    name = gets.chomp
    puts "What letter would you like to represent you, #{name}?"
    game_piece = gets.chomp
    Player.new(name, game_piece)
  end

end

player_1 = Player.create_player.inspect
player_2 = Player.create_player.inspect
game = TicTacToe.new(player_1, player_2)

