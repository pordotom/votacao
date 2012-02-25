require 'spec_helper'

describe Vote do
  describe "Relationship with optionvalue" do
    before do
      @vote = Vote.new
    end
    
    it "should have vocation" do
      @vote.option_value = OptionValue.new
      @vote.option_value.should be_an_instance_of OptionValue
    end
  end
end
