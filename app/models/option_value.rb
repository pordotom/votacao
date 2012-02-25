class OptionValue < ActiveRecord::Base
  belongs_to :option
  has_many :votes
  
  def votes_count
    votes.size
  end
end
