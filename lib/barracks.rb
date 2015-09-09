class Barracks
	attr_accessor :gold, :food
	def initialize 
		@gold = 1000
		@food = 80
	end

  def can_train_footman?
  	gold >= 135 && food >= 2 
  end

  def train_footman
  	@gold = 1000-135
  	@food = 80-2
  	if can_train_footman? 
  		Footman.new
  	end
  end

  def can_train_peasant?
  	gold >= 90 && food >= 5
	end

	def train_peasant
		@gold = 1000-90
		@food = 80-5
		if can_train_peasant?
			Peasant.new
		end
	end
end


# barracks = Barracks.new
# puts barracks.gold