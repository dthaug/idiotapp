class Question < ActiveRecord::Base
  attr_accessible :description, :votes, :dilemma_id
  belongs_to :dilemma

  validates :description, :dilemma_id, presence: true
  validates :description, :length => { :in => 3..160 }

  has_reputation :votes, source: :user, aggregated_by: :sum

end
