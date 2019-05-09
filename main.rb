require "colorize"

def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts "**Main Menu**".colorize(:color => :white, :background => :green)
  puts "Please select from the options below:"
  puts "1: Enter git command".colorize(:green)
  puts "2: Exit"
  choice = gets.to_i
  sleep(1)
  #sleep shows for designated amount of time (in seconds), and then clears
  print `clear`
  # #backticks to call the command rather than print the string

  case choice
    when 1
      puts "Enter git command: ".colorize(:green)
      puts_git(gets.strip)
      menu
    when 2
      puts "Goodbye.".colorize(:blue)
      exit
    else
      puts "Sorry, invalid choice.".colorize(:red)
      puts "Please enter 1 or 2.".colorize(:green)
      menu
  end
end

menu