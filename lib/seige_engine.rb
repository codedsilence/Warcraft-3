class Seige_engine < Unit

  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    if enemy.is_a? Barracks
      2.times { super(enemy) } # call twice for double damage
    elsif enemy.is_a? Seige_engine
      super(enemy) # call against another SiegeEngine
    end
  end
end