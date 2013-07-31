class Question < ActiveRecord::Base
  attr_accessible :description, :votes, :dilemma_id
  belongs_to :dilemma

  validates :description, presence: true

  has_reputation :votes, source: :user, aggregated_by: :sum

end
