class SeigeEngine < Unit

  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    if enemy.is_a? Building
      enemy.damage((@attack_power * 2.0).ceil)
    else
      nil
    end
  end

end