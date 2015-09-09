# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
	def initialize
  	# Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)	
 		super(60,10)
  end

   def attack!(enemy)
   	return enemy.damage (attack_power / 2) if enemy.is_a? Barracks 
   	super
   	# enemy.damage @attack_power
   	#if enemy is barracks, AP/2
  end
end

