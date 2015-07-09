#---Declarations---#

board = [[0,0,0], #2D array
         [0,0,0],
         [0,0,0]]

def print(board) #print(board) shows the user the board
   counter = 0
	while counter < 3
    		puts "#{board[counter][0]}"+"#{board[counter][1]}"+"#{board[counter][2]}"
    		counter+=1
	end
end

def intro
	puts ""
