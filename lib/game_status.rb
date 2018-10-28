WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8],
  [0,4,8], [2,4,6],
  [0,3,6], [1,4,7], [2,5,8],
  ]


# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|

  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  end
<<<<<<< HEAD
end
=======
  end
>>>>>>> 013db5fb3907bc23bb88b8ec3c7e8cd5c6d17cf7
    false
end

def full?(board)
  board.all? { |i| i != " "}
end


def draw?(board)
  full?(board) && !won?(board)
 end


def over?(board)
   draw?(board) || won?(board) || full?(board)
end


def winner(board)
  if won?(board)
   return board[won?(board)[0]]
  else
    return nil
end
end

def draw?(board)
draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
x_diagonal_won = ["X", "O", "X", "O", "X", "O", "O", "O", "X"]
incomplete_board = ["X", " ", "X", " ", "X", " ", "O", "O", "X"]
  if draw?(draw_board)
    true
  else draw?(x_diagonal_won) && draw?(incomplete_board)
    false
  end
end
