require 'colorize'
require_relative '../lib/mars_rover'

def mars_intro_logo
  "\n\n
  #{' ' * 25} ███╗░░░███╗░█████╗░██████╗░░██████╗    ██████╗░░█████╗░██╗░░░██╗███████╗██████╗░
  #{' ' * 25} ████╗░████║██╔══██╗██╔══██╗██╔════╝    ██╔══██╗██╔══██╗██║░░░██║██╔════╝██╔══██╗
  #{' ' * 25} ██╔████╔██║███████║██████╔╝╚█████╗░    ██████╔╝██║░░██║╚██╗░██╔╝█████╗░░██████╔╝
  #{' ' * 25} ██║╚██╔╝██║██╔══██║██╔══██╗░╚═══██╗    ██╔══██╗██║░░██║░╚████╔╝░██╔══╝░░██╔══██╗
  #{' ' * 25} ██║░╚═╝░██║██║░░██║██║░░██║██████╔╝    ██║░░██║╚█████╔╝░░╚██╔╝░░███████╗██║░░██║
  #{' ' * 25} ╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░    ╚═╝░░╚═╝░╚════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝\n\n
  ".blue
end

def render_instructions
  marks_explanation = [
    "#{' ' * 10} 1) x => represents the x_coordinate position of the rover",
    "#{' ' * 10} 2) y => represents the y_coordinate position of the rover",
    "#{' ' * 10} 3) p => represents the compas direction the rover is facing"
  ]

  puts "#{' ' * 10} Your initial input should be in the format 'x y p' \n\n".red

  marks_explanation.each { |item| puts "#{item}\n\n" }

  puts "#{' ' * 10} ==================================================== \n\n"

  puts "#{' ' * 10} Lastly, enter rover movement/navigation instrutions in the format 'LMLMLMMLM' \n\n".red

  movement_commands = [
    "#{' ' * 10} 1) L => represents a left turn command",
    "#{' ' * 10} 2) R => represents a right turn command",
    "#{' ' * 10} 3) M => tells the rover to move"
  ]

  movement_commands.each { |item| puts "#{item}\n\n" }
end

def user_input
  puts "#{' ' * 10} Enter initial coordinates for the rover position as instructed abover > >"
  gets.chomp!
end

def start_the_rover_operation
  if user_input.is_a? String
    rover = Rover.new(user_input)
    x_coordinate = rover.render_specific_attr('x_coordinate')
    y_coordinate = rover.render_specific_attr('y_coordinate')
    compas_direction = rover.render_specific_attr('compas_point')

    initial_position_string = "#{x_coordinate} #{y_coordinate} #{compas_direction}"

    puts "#{' ' * 10} The initial position of the rover is: => #{initial_position_string}".green

    puts "#{' ' * 10} Enter instructions to move the rover around >> "
    instructions = gets.chomp!

    rover.rover_instructions(instructions)

    new_x_value = rover.render_specific_attr('x_coordinate')
    new_y_value = rover.render_specific_attr('y_coordinate')
    new_direction = rover.render_specific_attr('compas_point')

    puts "#{' ' * 10} The final position  is: #{new_x_value} #{new_y_value} #{new_direction}".green

    puts "#{' ' * 10} Exiting rover terminal window . . .".red
  else
    puts "#{' ' * 10} Invalid input, please make sure you read the instruction carefully".yellow
    user_input
  end
end

def mars_rover_user_guide
  puts mars_intro_logo
  puts "#{' ' * 10} Welcome, please read carefully, the instructions below: \n".upcase.yellow

  render_instructions

  sleep 0.3

  puts "#{' ' * 10} Please type (Y/N) to proceed or cancel the operation respectively > > >"
  user_choice = gets.chomp

  if user_choice == 'Y'
    start_the_rover_operation
  else
    puts "#{' ' * 10} You have terminated the rover operations window".green
    exit
  end
end

mars_rover_user_guide
