class TicTacToe 
  attr_accessor :game_board
  @@game_over = false
  @@win_conditions = 

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @board = [1,2,3,4,5,6,7,8,9]
    start_game
  end

  def start_game
    puts "Player 1 is #{@player_1.name}"
    puts "Player 2 is #{@player_2.name}"
    play
  end

  def welcome
    puts "==============="
    puts "==============="
    puts "===TicTacToe==="
    puts "==============="
    puts "==============="
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

  def game_over
    if @board

  def play 
    current_player = @player_1
    until @@game_over
      system('clear')
      game_board
      puts "#{current_player.name} which spot would you like to place your token at?"

      choice = gets.chomp.to_i
      if @board[choice - 1].is_a? Integer
        @board[choice - 1] = current_player.game_piece
      else
        puts 'Only select numbered spaces'
        choice = gets.chomp.to_i
        @board[choice - 1] = current_player.game_piece
      end

      stalemate

      current_player == @player_1 ? current_player = @player_2 : current_player = @player_1
    end
  end    

  def stalemate 
    board = @board
    if board.none? { |place| place.is_a? Integer}
      @@game_over = true
    end
  end
end

class Player
  attr_accessor :name, :game_piece
  @@player_counter = 0;

  def initialize(num)
    player_name(num)
    player_piece_choice(num)
    puts "Hi #{@name}, you are playing as #{@game_piece}"
  end
  
  def player_name(num)
    puts "Player #{num}, what is your name?"
    @name = gets.chomp
  end

  def player_piece_choice(num)
    if (num == 1)
      @game_piece = 'X'
    else @game_piece = 'O'
    end
  end

end

player_1 = Player.new(1)
player_2 = Player.new(2)
game = TicTacToe.new(player_1, player_2)
