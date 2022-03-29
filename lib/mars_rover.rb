class Rover
  def initialize(initial_position)
    @x_coordinate = initial_position.split[0].to_i
    @y_coordinate = initial_position.split[1].to_i
    @compas_cardinal_point = initial_position.split[2]
  end

  def make_a_left_turn
    case @compas_cardinal_point
    when 'N'
      @compas_cardinal_point = 'W'
    when 'S'
      @compas_cardinal_point = 'E'
    when 'E'
      @compas_cardinal_point = 'N'
    when 'W'
      @compas_cardinal_point = 'S'
    end
  end

  def make_a_right_turn
    case @compas_cardinal_point
    when 'N'
      @compas_cardinal_point = 'E'
    when 'S'
      @compas_cardinal_point = 'W'
    when 'E'
      @compas_cardinal_point = 'S'
    when 'W'
      @compas_cardinal_point = 'N'
    end
  end

  def rover_instructions(user_command)
    user_command.each_char do |command|
      case command
      when 'L'
        make_a_left_turn
      when 'R'
        make_a_right_turn
      when 'M'
        make_a_move
      else
        'Command not recognized, try again'
      end
    end
  end

  def make_a_move
    @y_coordinate += 1 if @compas_cardinal_point == 'N'
    @y_coordinate -= 1 if @compas_cardinal_point == 'S'
    @x_coordinate += 1 if @compas_cardinal_point == 'E'
    @x_coordinate -= 1 if @compas_cardinal_point == 'W'
  end

  def render_specific_attr(the_attr)
    case the_attr
    when 'x'
      @x_coordinate
    when 'y'
      @y_coordinate
    when 'p'
      @compas_cardinal_point
    else
      'Command not recognized, try again!'
    end
  end

  private

  attr_accessor :x_coordinate, :y_coordinate, :compas_cardinal_point
end
