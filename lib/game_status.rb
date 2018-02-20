require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
  ]
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination| 
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if position_1 == "X" && position_2 == "X" && position_3 == "X" 
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O" 
      return win_combination
    end
  end
    false
end

def full?(board)
  board.each do |status|
    if status[0] == "X" or "O" && status[1] == "X" or "O" && status[2] == "X" or "O" && status[3] == "X" or "O" && status[4] == "X" or "O" && status[5] == "X" or "O" && status[6] == "X" or "O" && status[7] == "X" or "O" && status[8] == "X" or "O"
     return true
    end
  end
    false
end
  
#return false if there's an open position_3  

def full?(board)
  board.any? do |status|
    if
     return true
    end
  end
    false
end
  
  
  
  
  
  
  
  










