def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts "Please select from the options below:"
  puts "1: Enter git command"
  puts "2: Exit"
  choice = gets.to_i
  # print `clear`
  # #backticks to call the command rather than print the string
  sleep(3)
  #sleep shows for designated amount of time (in seconds), and then clears
  
  case choice
    when 1
      print "Enter git command: "
      puts_git(gets.strip)
      menu
    when 2
      puts "Goodbye."
      exit
    else
      puts "Sorry, invalid choice."
      puts "Please enter 1 or 2."
      menu
  end
end

menu