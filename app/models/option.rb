class Option < ActiveRecord::Base
  belongs_to :votation
  has_many :option_values
end
