# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top rows
  [3,4,5], ##middel rows
  [6,7,8], # last rows
  [0,3,6], #1st columns
  [1,4,7], #2nd columns
  [2,5,8], #3rd columns
  [0,4,8], #1st diagonals (left to right)
  [2,4,6], #2nd diagonal (right to left)
]
