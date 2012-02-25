class OptionValue < ActiveRecord::Base
  belongs_to :option
  has_many :votes
  
end
