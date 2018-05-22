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

def won?(board)
    ent = []
    board.select do |i|
      if i == " "
        ent << i
      end
      end
      if ent.length == 9
        return false
      end

      WIN_COMBINATIONS.each do |win_combo|
        index1 = win_combo[0]
        index2 = win_combo[1]
        index3 = win_combo[2]
        if board[index1] == "X" && board[index2] == "X" && board[index3] == "X"
          return win_combo
        end
        if board[index1] == "O" && board[index2] == "O" && board[index3] == "O"
          return win_combo
        end
      end

else
  return false
end

def FULL?(board)
board.all? do |combination|
 combination = "X"
 return true
end
return false
end
