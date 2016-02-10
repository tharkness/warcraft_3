class Unit
 
  attr_reader :attack_power, :health_points
  
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(damage)
    @health_points -= damage
  end

  def attack!(enemy)
    if dead?
      nil
    else
      enemy.damage(@attack_power)
    end
  end

  def dead?
    self.health_points <= 0
  end

end