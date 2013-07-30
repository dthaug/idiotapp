class Question < ActiveRecord::Base
  attr_accessible :description, :votes, :dilemma_id
  belongs_to :dilemma

  has_reputation :votes, source: :user, aggregated_by: :sum

end
