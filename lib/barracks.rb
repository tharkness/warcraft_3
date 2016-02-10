
class Barracks < Building

  attr_accessor :gold, :food, :lumber

  def initialize
    super(500)
    @gold = 1000
    @food = 80
    @lumber = 500
  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def can_build_seige_engine?
    gold >= 200 && lumber >= 60 && food >= 3
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

  def build_seige_engine
    if can_build_seige_engine?
      @gold -= 200
      @lumber -= 60
      @food -= 3
      return SeigeEngine.new
    else
      puts "Not Enough Resources"
    end
  end

end













