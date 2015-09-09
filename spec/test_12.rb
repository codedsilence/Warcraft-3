require_relative 'spec_helper'

#Units can die if HP = 0
describe Unit do

	before :each do
		@footman = Footman.new
	end

	it "When units health_points are ZERO unit, dies" do
  	#expect(Units) to have health_points?
  	@footman.damage 250
    expect(@footman.dead?).to eq(true) 
    @footman.dead?
  end
end
