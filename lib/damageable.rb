module Damageable
	def damage(attack_power)
		@health_points -= attack_power 
	end
end