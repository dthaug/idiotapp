class Question < ActiveRecord::Base
  attr_accessible :description, :votes, :dilemma_id
  belongs_to :dilemma

  validates :description, presence: true,
                 :length => { :in => 4..160 }

  has_reputation :votes, source: :user, aggregated_by: :sum

end
