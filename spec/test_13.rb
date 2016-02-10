require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(100, 10)
    @unit2 = Unit.new(10, 100)
  end

  describe '#attack!' do
    it "should execute if unit is not dead" do
      @unit.damage(90)
      @unit.attack!(@unit2)
      expect(@unit2.dead?).to be(true)
    end
  end

  describe '#attack!' do
    it "should not execute if the unit is dead" do
      @unit2.attack!(@unit)
      @unit.attack!(@unit2)
      expect(@unit2.dead?).to be(false)
    end
  end

end