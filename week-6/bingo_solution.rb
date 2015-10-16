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
  #FILL IN X in position of returned index if it is not nil (it starts nill)

# Display the board to the console (prettily)
# PRINT WITH || and proper spacing


=begin
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
=end



# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def random
    @number = rand(1..100)
    @bingo = ["b","i","n","g","o"]
    @letter = @bingo.sample
  end

  def check
    ind = nil
    @bingo_board.each_with_index {|x,i| ind = i if x[@bingo.index(@letter)]==@number}
    @bingo_board[ind][@bingo.index(@letter)] = " X" if ind != nil
  end

  def display
    puts "    B   I   N   G   O"
    for i in 0..4
      print "||  "
      for j in 0..4
        print " " if @bingo_board[i][j] != " X" && @bingo_board[i][j] < 10
        print @bingo_board[i][j]
        print "  "
      end
      print "||"
      puts
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.random
new_game.check

new_game.display

=begin
#Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
It was a bit tricky to figure out exactly how I want to plan out my class design, but it helped give me an idea of what to try out. My code ended up being a little more succinct than I originally planned.

What are the benefits of using a class for this challenge?
Different methods can be called upon a class instance to perform different tasks

How can you access coordinates in a nested array?
Since the array was organized in a 5 x 5 fashion for this challenge, accessing the elements in this array was simpler than normal. Normally, you can use nested .each statements. In this case, I just used one .each and called upon the index of a "bingo" array based on the letter chosen to access each element in that letter's column.

What methods did you use to access and modify the array?
I used the .each_with_index and .index methods 

How did you determine what should be an instance variable versus a local variable?
If an variable was used in more one method, it was defined as an instance variable. If it was only used within a single method, it was defined as a local variable.

What do you feel is most improved in your refactored solution?
I cleaned up the display code by adding an additional for loop and I made the ind variable a local variable instead of an instance since it was really only used within the .check method. The code is simpler to read and doesn't repeat much. I was happy with the methods I used in my check method and didn't feel the need to add additional enumerable methods to complicate it.

=end