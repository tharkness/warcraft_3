require_relative 'spec_helper'

describe Barracks do
  
  before :each do
    @barracks = Barracks.new
  end

  describe 'can_build_seige_engine?' do

    it "if barracks has less than 200 gold it cannot build a seige engine" do
      @barracks.gold = 100
      expect(@barracks.can_build_seige_engine?).to be(false)
    end

    it "if barracks has less than 60 lumber it cannot build a seige engine" do
      @barracks.lumber = 50
      expect(@barracks.can_build_seige_engine?).to be(false)
    end

    it "if barracks has less than 3 food it cannot build a seige engine" do
      @barracks.food = 2
      expect(@barracks.can_build_seige_engine?).to be(false)
    end

    it "if barracks has adequate resource then it can build a seige engine" do
      expect(@barracks.can_build_seige_engine?).to be (true)
    end

  end

end