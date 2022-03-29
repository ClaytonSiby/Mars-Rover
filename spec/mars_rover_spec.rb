#!/usr/bin/env ruby

require 'mars_rover'

describe MarsRover do
  context 'Rendering the MassRover output' do
    it "should say 'Rover on Mars!' after calling the rover_on_mars method" do
      helo = MarsRover.new
      the_message = helo.rover_on_mars

      expect(the_message).to eq 'Rover on Mars!'
    end
  end
end
