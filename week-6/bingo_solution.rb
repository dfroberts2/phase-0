# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# DEFINE random method
# SET instance variable @number to random number 1-100
# SET instance variable @letter to sample from [b,i,n,g,o]

# Check the called column for the number called.
#DEFINE check method
#IF @letter is b:
# CHECK for each x in bingo[x][0] for number
# return index if true
#IF @letter is i:
# CHECK for each x in bingo[x][1] for number
# return index if true
#IF @letter is n:
# CHECK for each x in bingo[x][2] for number
# return index if true
#IF @letter is g:
# CHECK for each x in bingo[x][3] for number
# return index if true
#IF @letter is o:
# CHECK for each x in bingo[x][4] for number
# return index if true

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @ind=nil
  end
  def random
    @number = rand(1..100)
    @bingo = ["b","i","n","g","o"]
    @letter = @bingo.sample
  end

  def check
    @bingo_board.each_with_index {|x,i| @ind = i if x[@bingo.index(@letter)]==@number}
    @bingo_board[@ind][@bingo.index(@letter)] = " X" if @ind != nil
    @ind = nil
  end

  def display
    puts "    B   I   N   G   O"
    for i in 0..4
    print "||  "
    print " " if @bingo_board[i][0]!=" X" && @bingo_board[i][0]<10
    print @bingo_board[i][0]
    print "  "
    print " " if @bingo_board[i][1]!=" X" && @bingo_board[i][1]<10
    print @bingo_board[i][1]
    print "  "
    print " " if @bingo_board[i][2]!=" X" && @bingo_board[i][2]<10
    print @bingo_board[i][2]
    print "  "
    print " " if @bingo_board[i][3]!=" X" && @bingo_board[i][3]<10
    print @bingo_board[i][3]
    print "  "
    print " " if @bingo_board[i][4]!=" X" && @bingo_board[i][4]<10 
    print @bingo_board[i][4]
    print "  ||"
    puts
    end
  end


end




# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check

new_game.random
new_game.check


new_game.display

#Reflection

