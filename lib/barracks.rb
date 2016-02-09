
class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      return Footman.new
    else
      puts "Not Enough Resources"
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      return Peasant.new
    else
      puts "Not Enough Resources"
    end
  end

end













