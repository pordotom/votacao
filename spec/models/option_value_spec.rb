require 'spec_helper'

describe OptionValue do
  describe "Relationship with option" do
    before do
      @option_value = OptionValue.new
    end
    
    it "should have vocation" do
      @option_value.option = Option.new
      @option_value.option.should be_an_instance_of Option
    end
  end
end
