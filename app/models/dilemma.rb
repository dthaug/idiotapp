class Dilemma < ActiveRecord::Base
  attr_accessible :name, :questions_attributes

  belongs_to :user
  has_many :questions

  accepts_nested_attributes_for :questions

  validates :name, presence: true,
                 :length => { :in => 4..20 }

  validates :user_id, presence: true

  has_reputation :votes, source: {reputation: :votes, of: :questions}, aggregated_by: :sum


end
