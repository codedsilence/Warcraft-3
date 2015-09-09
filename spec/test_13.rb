require_relative 'spec_helper'

#Units can die if HP = 0
describe Unit do

	before :each do
		@footman = Footman.new
	end

	it "When unit is dead, can't attack or be attacked." do
		enemy = Footman.new
  	expect(@footman).to receive(:dead?).and_return(true)# STUB when unit recives 'dead?' then always return true.
    expect(@footman.attack!(enemy)).to eq(false)#required argument for .attack!
  end
end
