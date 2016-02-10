require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(5, 5)
  end

  describe '#dead?' do
    it "should evaluate to true if unit has zero or less health points" do
      @unit.damage(5)
      expect(@unit.dead?).to be(true)
    end
  end

  describe '#dead' do
    it "should evaluate to false if the unit has health remaining" do
      @unit.damage(4)
      expect(@unit.dead?).to be(false)
    end
  end

end