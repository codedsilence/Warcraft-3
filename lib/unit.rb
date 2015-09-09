require 'pry'

class Unit
  attr_accessor :attack_power, :health_points, :damage
  # attr_reader :health_points

  def initialize(health_points = 60, attack_power = 10)
    @health_points = health_points
    @attack_power = attack_power   
  end

	def damage(damage)
    @health_points -= damage
  end

  def attack!(enemy)
  	enemy.damage(@attack_power)
  end
  # binding.pry
end
