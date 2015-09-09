
#Enhancemnet 1.
require_relative 'spec_helper'
#Barracks should have health_points equal to 500. 
#Footman should do HALF attack_points of damage against Barracks. 


describe Barracks do 
  
  before :each do	
  	@barracks = Barracks.new
  	@attacker = Footman.new
  end

  it "has and knows its HP (health points)" do
  	#expect(Barracks) to have health_points eq.500
    expect(@barracks.health_points).to eq(500)
  end

	describe "#damage" do
		#when footman(Unit) attacks a barracks, it only receives half the footmans(Units) attack_points as damage.
    it "should reduce the Barracks health_points by HALF the Units attack_power specified" do
       @attacker.attack! @barracks
      expect(@barracks.health_points).to eq(495) # starts at 500
    end
  end
end