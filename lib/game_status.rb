WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Left diagonal
  [6,4,2], # Right diagonal
]

# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  counter = 0
  while counter < 9
  WIN_COMBINATIONS.all? do
    if board[WIN_COMBINATIONS[counter][0]] == 'X' && board[WIN_COMBINATIONS[counter][1]] == 'X' && board[WIN_COMBINATIONS[counter][2]] == 'X'
      return WIN_COMBINATIONS[counter]
    elsif board[WIN_COMBINATIONS[counter][0]] == 'O' && board[WIN_COMBINATIONS[counter][1]] == 'O' && board[WIN_COMBINATIONS[counter][2]] == 'O'
      return WIN_COMBINATIONS[counter]
    else
      counter += 1
    end
  end
end

def over?(board)
  while won?(board) == false
    return false
  if won?(board) == true
    return true


# Define your WIN_COMBINATIONS constant
end
# board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
