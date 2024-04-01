# Handles win conditions and game logic
class Game
  attr_reader :board, :player1, :player2

  def initialize(player1_name, player2_name)
    @board = Board.new
    black = '⚫'
    white = '⚪'
    @player1 = Player.new(player1_name, black)
    @player2 = Player.new(player2_name, white)
  end

  def play
    winner = nil
    turn = 1
    until winner || @board.full?
      player = turn.odd? ? @player1 : @player2

      board.display

      # check if player can choose this col
      player_choice = player.choose_col
      until @board.can_put?(player_choice)
        @board.cant_choose_msg
        player_choice = player.choose_col
      end

      # fill in the cell accordingly and save it
      new_cell = @board.mark_cell(player.color, player_choice)

      # check if it's a win
      winner = player if check_win(new_cell, player.color)

      turn += 1
    end
    board.display
    return unless winner

    win_msg(winner.name)
  end
end

# Checks if connect four is complete by the new cell and returns a bool accordingly
def check_win(cell, color)
  row, col = cell
  directions = [[0, 1], [1, 0], [1, 1], [-1, 1]]
  directions.each do |dr, dc|
    count = 1 + count_dir(row, col, dr, dc, color) + count_dir(row, col, -dr, -dc, color)
    return true if count >= 4
  end
  false
end

def count_dir(row, col, dr, dc, color)
  count = 0
  nr = row + dr
  nc = col + dc
  while check_bound(nr, nc) && @board.check_color(nr, nc) == color
    count += 1
    nr += dr
    nc += dc
  end
  count
end

# returns true if cell is in bound
def check_bound(row, col)
  (0..5).include?(row) && (0..6).include?(col)
end

def win_msg(player)
  puts "\n#{player} Won!\n"
end

def tie_msg
  puts "\nBoard is full! It's a tie!\n"
end
