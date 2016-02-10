require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "should make sure that barracks starts with 500 units of lumber as default" do
    expect(@barracks.lumber).to eq(500)
  end

end