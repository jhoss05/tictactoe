# 1. Come up with requirements/specifications, which will determine the scope.
# 2. Application logic: sequence of steps.
# 3. Translation of those steps into code. 
# 4. Run code to verify logic. 

# Draw a board.

# Assign player to X.
# Assign computer to O. 

# loop until a winner or all squares are filled.
#   Player picks an empty square.
#   Check if there is a winner.
#   Computer picls empty square.
#   Check if there is a winner.

# If there is a winner
#   show the winner.

# Else if there is no winner
#   show tie.

# Board Contents

require 'pry'

BOARD_CONTENTS = {1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => ' ', 6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '}

def computer_chose(num)
  puts "= = = = = = = = = = = ="
  puts "Computer chose #{num}."
  puts "= = = = = = = = = = = ="
end

def player_chose(num)
  puts "= = = = = = = = = = = ="
  puts "Player chose #{num}."
  puts "= = = = = = = = = = = ="
end

def square_chosen(words)
  puts "= = = = = = = = = = = = = = = = = = ="
  puts "That square has already been chosen."
  puts "= = = = = = = = = = = = = = = = = = ="
end

def draw_board(var)
  puts "     |     |     "
  puts "  #{BOARD_CONTENTS[1]}  |  #{BOARD_CONTENTS[2]}  |  #{BOARD_CONTENTS[3]}  "
  puts "     |     |     "
  puts "------------------"
  puts "     |     |     "
  puts "  #{BOARD_CONTENTS[4]}  |  #{BOARD_CONTENTS[5]}  |  #{BOARD_CONTENTS[6]}  "
  puts "     |     |     "
  puts "------------------"
  puts "     |     |     "
  puts "  #{BOARD_CONTENTS[7]}  |  #{BOARD_CONTENTS[8]}  |  #{BOARD_CONTENTS[9]}  "
  puts "     |     |     "
end

# Player input

def player_choice(player_input)
  # (1)
  loop do
    puts "Please choose a square:"
    player_input = gets.chomp
    if player_input == "1" && (BOARD_CONTENTS[1] == "X" || BOARD_CONTENTS[1] == "O")
      square_chosen("words")
      next
    elsif player_input == "1" && (BOARD_CONTENTS[1] != "X" && BOARD_CONTENTS[1] != "O")  
      BOARD_CONTENTS[1] = "X"
      player_chose(1)
      break
    end
    # (2)
    if player_input == "2" && (BOARD_CONTENTS[2] == "X" || BOARD_CONTENTS[2] == "O")
      square_chosen("words")
      next
    elsif player_input == "2" && (BOARD_CONTENTS[2] != "X" && BOARD_CONTENTS[2] != "O")  
      BOARD_CONTENTS[2] = "X"
      player_chose(2)
      break
    end
    # (3)
    if player_input == "3" && (BOARD_CONTENTS[3] == "X" || BOARD_CONTENTS[3] == "O")
      square_chosen("words")
      next
    elsif player_input == "3" && (BOARD_CONTENTS[3] != "X" && BOARD_CONTENTS[3] != "O")  
      BOARD_CONTENTS[3] = "X"
      player_chose(3)
      break
    end
    # (4)
    if player_input == "4" && (BOARD_CONTENTS[4] == "X" || BOARD_CONTENTS[4] == "O")
      square_chosen("words")
      next
    elsif player_input == "4" && (BOARD_CONTENTS[4] != "X" && BOARD_CONTENTS[4] != "O")  
      BOARD_CONTENTS[4] = "X"
      player_chose(4)
      break
    end
    # (5)
    if player_input == "5" && (BOARD_CONTENTS[5] == "X" || BOARD_CONTENTS[5] == "O")
      square_chosen("words")
      next
    elsif player_input == "5" && (BOARD_CONTENTS[5] != "X" && BOARD_CONTENTS[5] != "O")  
      BOARD_CONTENTS[5] = "X"
      player_chose(5)
      break
    end
    # (6)
    if player_input == "6" && (BOARD_CONTENTS[6] == "X" || BOARD_CONTENTS[6] == "O")
      square_chosen("words")
      next
    elsif player_input == "6" && (BOARD_CONTENTS[6] != "X" && BOARD_CONTENTS[6] != "O")  
      BOARD_CONTENTS[6] = "X"
      player_chose(6)
      break
    end
    # (7)
    if player_input == "7" && (BOARD_CONTENTS[7] == "X" || BOARD_CONTENTS[7] == "O")
      square_chosen("words")
      next
    elsif player_input == "7" && (BOARD_CONTENTS[7] != "X" && BOARD_CONTENTS[7] != "O")  
      BOARD_CONTENTS[7] = "X"
      player_chose(7)
      break
    end
    # (8)
    if player_input == "8" && (BOARD_CONTENTS[8] == "X" || BOARD_CONTENTS[8] == "O")
      square_chosen("words")
      next
    elsif player_input == "8" && (BOARD_CONTENTS[8] != "X" && BOARD_CONTENTS[8] != "O")  
      BOARD_CONTENTS[8] = "X"
      player_chose(8)
      break
    end
    # (9)
    if player_input == "9" && (BOARD_CONTENTS[9] == "X" || BOARD_CONTENTS[9] == "O")
      square_chosen("words")
      next
    elsif player_input == "9" && (BOARD_CONTENTS[9] != "X" && BOARD_CONTENTS[9] != "O")  
      BOARD_CONTENTS[9] = "X"
      player_chose(9)
      break
    end
  end
end

# Computer input

def computer_choice(computer_input)
  # (1)
  loop do
    computer_input = BOARD_CONTENTS.keys.sample.to_s
    if computer_input == "1" && (BOARD_CONTENTS[1] == "X" || BOARD_CONTENTS[1] == "O")
      next
    elsif computer_input == "1" && (BOARD_CONTENTS[1] != "X" && BOARD_CONTENTS[1] != "O")  
      BOARD_CONTENTS[1] = "O"
      computer_chose(1)
      break
    end
    # (2)
    if computer_input == "2" && (BOARD_CONTENTS[2] == "X" || BOARD_CONTENTS[2] == "O")
      next
    elsif computer_input == "2" && (BOARD_CONTENTS[2] != "X" && BOARD_CONTENTS[2] != "O")  
      BOARD_CONTENTS[2] = "O"
      computer_chose(2)
      break
    end
    # (3)
    if computer_input == "3" && (BOARD_CONTENTS[3] == "X" || BOARD_CONTENTS[3] == "O")
      next
    elsif computer_input == "3" && (BOARD_CONTENTS[3] != "X" && BOARD_CONTENTS[3] != "O")  
      BOARD_CONTENTS[3] = "O"
      computer_chose(3)
      break
    end
    # (4)
    if computer_input == "4" && (BOARD_CONTENTS[4] == "X" || BOARD_CONTENTS[4] == "O")
      next
    elsif computer_input == "4" && (BOARD_CONTENTS[4] != "X" && BOARD_CONTENTS[4] != "O")  
      BOARD_CONTENTS[4] = "O"
      computer_chose(4)
      break
    end
    # (5)
    if computer_input == "5" && (BOARD_CONTENTS[5] == "X" || BOARD_CONTENTS[5] == "O")
      next
    elsif computer_input == "5" && (BOARD_CONTENTS[5] != "X" && BOARD_CONTENTS[5] != "O")  
      BOARD_CONTENTS[5] = "O"
      computer_chose(5)
      break
    end
    # (6)
    if computer_input == "6" && (BOARD_CONTENTS[6] == "X" || BOARD_CONTENTS[6] == "O")
      next
    elsif computer_input == "6" && (BOARD_CONTENTS[6] != "X" && BOARD_CONTENTS[6] != "O")  
      BOARD_CONTENTS[6] = "O"
      computer_chose(6)
      break
    end
    # (7)
    if computer_input == "7" && BOARD_CONTENTS[7] == "X" || BOARD_CONTENTS[7] == "O"
      next
    elsif computer_input == "7" && BOARD_CONTENTS[7] != "X" && BOARD_CONTENTS[7] != "O"  
      BOARD_CONTENTS[7] = "O"
      computer_chose(7)
      break
    end
    # (8)
    if computer_input == "8" && (BOARD_CONTENTS[8] == "X" || BOARD_CONTENTS[8] == "O")
      next
    elsif computer_input == "8" && (BOARD_CONTENTS[8] != "X" && BOARD_CONTENTS[8] != "O")  
      BOARD_CONTENTS[8] = "O"
      computer_chose(8)
      break
    end
    # (9)
    if computer_input == "9" && (BOARD_CONTENTS[9] == "X" || BOARD_CONTENTS[9] == "O")
      next
    elsif computer_input == "9" && (BOARD_CONTENTS[9] != "X" && BOARD_CONTENTS[9] != "O")  
      BOARD_CONTENTS[9] = "O"
      computer_chose(9)
      break
    end
  end
end

# Main program

puts "= = = = = = = = = = = ="
puts "Welcome to Tic Tac Toe"
puts "= = = = = = = = = = = ="
puts draw_board("next")

puts "The squares are numbered 1 through 9."

loop do
  player_choice("player_input")
  draw_board("x")
  if ((BOARD_CONTENTS[1] == "X") && (BOARD_CONTENTS[2] == "X") && (BOARD_CONTENTS[3]  == "X")) || 
    ((BOARD_CONTENTS[4] == "X") && (BOARD_CONTENTS[5] == "X") && (BOARD_CONTENTS[6]  == "X")) || 
    ((BOARD_CONTENTS[7] == "X") && (BOARD_CONTENTS[8] == "X") && (BOARD_CONTENTS[9]  == "X")) ||
    ((BOARD_CONTENTS[1] == "X") && (BOARD_CONTENTS[4] == "X") && (BOARD_CONTENTS[7]  == "X")) ||
    ((BOARD_CONTENTS[2] == "X") && (BOARD_CONTENTS[5] == "X") && (BOARD_CONTENTS[8]  == "X")) ||
    ((BOARD_CONTENTS[3] == "X") && (BOARD_CONTENTS[6] == "X") && (BOARD_CONTENTS[9]  == "X")) ||
    ((BOARD_CONTENTS[1] == "X") && (BOARD_CONTENTS[5] == "X") && (BOARD_CONTENTS[9]  == "X")) ||
    ((BOARD_CONTENTS[3] == "X") && (BOARD_CONTENTS[5] == "X") && (BOARD_CONTENTS[7]  == "X"))
    puts "= = = = = = = = = = = = ="
    puts "Player wins!"
    puts "= = = = = = = = = = = = ="
    puts "Goodbye!"
    puts "= = = = = = = = = = = = ="
    break
  elsif (BOARD_CONTENTS[1] == "O" && BOARD_CONTENTS[2] == "O" && BOARD_CONTENTS[3]  == "O") || 
    (BOARD_CONTENTS[4] == "O" && BOARD_CONTENTS[5] == "O" && BOARD_CONTENTS[6]  == "O") || 
    (BOARD_CONTENTS[7] == "O" && BOARD_CONTENTS[8] == "O" && BOARD_CONTENTS[9]  == "O") ||
    (BOARD_CONTENTS[1] == "O" && BOARD_CONTENTS[4] == "O" && BOARD_CONTENTS[7]  == "O") ||
    (BOARD_CONTENTS[2] == "O" && BOARD_CONTENTS[5] == "O" && BOARD_CONTENTS[8]  == "O") ||
    (BOARD_CONTENTS[3] == "O" && BOARD_CONTENTS[6] == "O" && BOARD_CONTENTS[9]  == "O") ||
    (BOARD_CONTENTS[1] == "O" && BOARD_CONTENTS[5] == "O" && BOARD_CONTENTS[9]  == "O") ||
    (BOARD_CONTENTS[3] == "O" && BOARD_CONTENTS[5] == "O" && BOARD_CONTENTS[7]  == "O")
    puts "= = = = = = = = = = = = ="
    puts "Computer wins!"
    puts "= = = = = = = = = = = = ="
    puts "Goodbye!"
    puts "= = = = = = = = = = = = ="
    break
  elsif (BOARD_CONTENTS[1] == "X" || BOARD_CONTENTS[1] == "O") &&
    (BOARD_CONTENTS[2] == "X" || BOARD_CONTENTS[2] == "O") &&
    (BOARD_CONTENTS[3] == "X" || BOARD_CONTENTS[3] == "O") &&
    (BOARD_CONTENTS[4] == "X" || BOARD_CONTENTS[4] == "O") &&
    (BOARD_CONTENTS[5] == "X" || BOARD_CONTENTS[5] == "O") &&
    (BOARD_CONTENTS[6] == "X" || BOARD_CONTENTS[6] == "O") &&
    (BOARD_CONTENTS[7] == "X" || BOARD_CONTENTS[7] == "O") &&
    (BOARD_CONTENTS[8] == "X" || BOARD_CONTENTS[8] == "O") &&
    (BOARD_CONTENTS[9] == "X" || BOARD_CONTENTS[9] == "O") 
    puts "= = = = = = = = = = = = ="
    puts "It's a tie!"
    puts "= = = = = = = = = = = = ="
    puts "Goodbye!"
    puts "= = = = = = = = = = = = ="
    break
  end
  computer_choice("computer_input")
  draw_board("x")
  if ((BOARD_CONTENTS[1] == "X") && (BOARD_CONTENTS[2] == "X") && (BOARD_CONTENTS[3]  == "X")) || 
    ((BOARD_CONTENTS[4] == "X") && (BOARD_CONTENTS[5] == "X") && (BOARD_CONTENTS[6]  == "X")) || 
    ((BOARD_CONTENTS[7] == "X") && (BOARD_CONTENTS[8] == "X") && (BOARD_CONTENTS[9]  == "X")) ||
    ((BOARD_CONTENTS[1] == "X") && (BOARD_CONTENTS[4] == "X") && (BOARD_CONTENTS[7]  == "X")) ||
    ((BOARD_CONTENTS[2] == "X") && (BOARD_CONTENTS[5] == "X") && (BOARD_CONTENTS[8]  == "X")) ||
    ((BOARD_CONTENTS[3] == "X") && (BOARD_CONTENTS[6] == "X") && (BOARD_CONTENTS[9]  == "X")) ||
    ((BOARD_CONTENTS[1] == "X") && (BOARD_CONTENTS[5] == "X") && (BOARD_CONTENTS[9]  == "X")) ||
    ((BOARD_CONTENTS[3] == "X") && (BOARD_CONTENTS[5] == "X") && (BOARD_CONTENTS[7]  == "X"))
    puts "= = = = = = = = = = = = ="
    puts "Player wins!"
    puts "= = = = = = = = = = = = ="
    puts "Goodbye!"
    puts "= = = = = = = = = = = = ="
    break
  elsif (BOARD_CONTENTS[1] == "O" && BOARD_CONTENTS[2] == "O" && BOARD_CONTENTS[3]  == "O") || 
    (BOARD_CONTENTS[4] == "O" && BOARD_CONTENTS[5] == "O" && BOARD_CONTENTS[6]  == "O") || 
    (BOARD_CONTENTS[7] == "O" && BOARD_CONTENTS[8] == "O" && BOARD_CONTENTS[9]  == "O") ||
    (BOARD_CONTENTS[1] == "O" && BOARD_CONTENTS[4] == "O" && BOARD_CONTENTS[7]  == "O") ||
    (BOARD_CONTENTS[2] == "O" && BOARD_CONTENTS[5] == "O" && BOARD_CONTENTS[8]  == "O") ||
    (BOARD_CONTENTS[3] == "O" && BOARD_CONTENTS[6] == "O" && BOARD_CONTENTS[9]  == "O") ||
    (BOARD_CONTENTS[1] == "O" && BOARD_CONTENTS[5] == "O" && BOARD_CONTENTS[9]  == "O") ||
    (BOARD_CONTENTS[3] == "O" && BOARD_CONTENTS[5] == "O" && BOARD_CONTENTS[7]  == "O")
    puts "= = = = = = = = = = = = ="
    puts "Computer wins!"
    puts "= = = = = = = = = = = = ="
    puts "Goodbye!"
    puts "= = = = = = = = = = = = ="
  elsif (BOARD_CONTENTS[1] == "X" || BOARD_CONTENTS[1] == "O") &&
    (BOARD_CONTENTS[2] == "X" || BOARD_CONTENTS[2] == "O") &&
    (BOARD_CONTENTS[3] == "X" || BOARD_CONTENTS[3] == "O") &&
    (BOARD_CONTENTS[4] == "X" || BOARD_CONTENTS[4] == "O") &&
    (BOARD_CONTENTS[5] == "X" || BOARD_CONTENTS[5] == "O") &&
    (BOARD_CONTENTS[6] == "X" || BOARD_CONTENTS[6] == "O") &&
    (BOARD_CONTENTS[7] == "X" || BOARD_CONTENTS[7] == "O") &&
    (BOARD_CONTENTS[8] == "X" || BOARD_CONTENTS[8] == "O") &&
    (BOARD_CONTENTS[9] == "X" || BOARD_CONTENTS[9] == "O") 
    puts "= = = = = = = = = = = = ="
    puts "It's a tie!"
    puts "= = = = = = = = = = = = ="
    puts "Goodbye!"
    puts "= = = = = = = = = = = = ="
    break
  end
end
