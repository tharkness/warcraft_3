require_relative 'spec_helper'

describe Barracks do
  
  before :each do
    @barracks = Barracks.new
    @footman = Footman.new
    @barracks.is_a? Building
  end

  # Barracks health_points should have a default value of 500
  it "starts off with 500 health points" do
    expect(@barracks.health_points).to eq(500)
  end

  # Barracks should take half damage from Footmen
  it "takes half attack points damage from Footmen" do
    expect(@barracks).to receive(:damage).with(5)
    @footman.attack!(@barracks)
  end

end