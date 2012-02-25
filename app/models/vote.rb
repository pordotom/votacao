class Vote < ActiveRecord::Base
  belongs_to :option_value
end
