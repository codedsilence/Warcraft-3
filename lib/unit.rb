require 'pry'

class Unit
  include Damageable
  attr_accessor :attack_power
  attr_reader :health_points

  def initialize(health_points = 60, attack_power = 10)
    @health_points = health_points
    @attack_power = attack_power   
  end

  def attack!(enemy)
  	if dead? || enemy.dead?
  		false
  	else
  		enemy.damage(@attack_power) 
  	end
  end

  def dead?
  	@health_points <= 0
  end
  # binding.pry
end
