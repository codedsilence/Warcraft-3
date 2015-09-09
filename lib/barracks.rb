class Barracks
	include Damageable

	attr_accessor :gold, :food, :lumber, :health_points

	def initialize(health_points=500)
		@gold = 1000
		@food = 80
		@lumber = 500
		@health_points = health_points
	end


  def can_train_footman?
  	gold >= 135 && food >= 2 
  end

  def train_footman
  	return unless can_train_footman?

  	@gold -= 135
  	@food -= 2
  	Footman.new
  end

  def can_train_peasant?
  	gold >= 90 && food >= 5
	end

	def train_peasant
		return unless can_train_peasant?
		@gold -= 90
		@food -= 5
		Peasant.new
	end

	def can_train_seige_engine?
		gold >= 200 && food >= 3 && lumber >= 60
	end

	def train_siege_engine
    if can_train_seige_engine?
      @gold -= 200
      @food -= 3
      @lumber -= 60
      SiegeEngine.new
    end
  end
end


# barracks = Barracks.new
# puts barracks.gold