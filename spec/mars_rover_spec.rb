require 'mars_rover'

describe Rover do
  # positive test cases

  context 'When the correct input is provided' do
    context "'make_a_left_turn' is called" do
      rover = Rover.new('1 2 N')
      rover.make_a_left_turn

      it 'makes a left turn' do
        expect(rover.render_specific_attr('compas_point')).to eq('W')
      end
    end

    context "'make_a_right_turn' is called" do
      rover = Rover.new('1 2 N')
      rover.make_a_right_turn

      it 'makes a right turn' do
        expect(rover.render_specific_attr('compas_point')).to eq('E')
      end
    end

    context "'make_a_move' is called" do
      rover = Rover.new('1 2 N')
      rover.make_a_move

      it 'makes a move' do
        expect(rover.render_specific_attr('x_coordinate')).to eq(1)
        expect(rover.render_specific_attr('y_coordinate')).to eq(3)
      end
    end

    context "when 'rover_instructions' is called" do
      rover = Rover.new('1 2 N')
      rover.rover_instructions('LMLMLMLMM')

      it 'changes the x_coordinate, y_coordinate, and compas_cardinal_point' do
        expect(rover.render_specific_attr('x_coordinate')).to eq(1)
        expect(rover.render_specific_attr('y_coordinate')).to eq(3)
        expect(rover.render_specific_attr('compas_point')).to eq('N')
      end
    end
  end
end
