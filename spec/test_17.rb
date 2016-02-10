require_relative 'spec_helper'

describe SeigeEngine do
  
  before :each do
    @seige_engine = SeigeEngine.new
    @building = Building.new(500)
    @footman = Footman.new
  end

  describe '#attack!' do

    it "does double damage against any building" do
      expect(@building).to receive(:damage).with(100)
      @seige_engine.attack!(@building)
    end

    it "cannot attack non-buildings" do
      expect(@seige_engine.attack!(@footman)).to be(nil)
    end
  end

end