require_relative 'spec_helper'

describe Barracks do
  
  before :each do
    @barracks = Barracks.new
  end

  describe '#build_seige_engine' do
    
    it "costs 200 gold" do
      @barracks.build_seige_engine
      expect(@barracks.gold).to eq(800) #starts at 1000
    end

    it "costs 60 lumber" do
      @barracks.build_seige_engine
      expect(@barracks.lumber).to eq(440) #starts at 500
    end

    it "costs 3 food" do
      @barracks.build_seige_engine
      expect(@barracks.food).to eq(77) #starts at 80
    end

  end

end