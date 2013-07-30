class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         #:recoverable,
        :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  
  has_many :evaluations, class_name: "RSEvaluation", as: :source
  has_reputation :votes, source: {reputation: :votes, of: :dilemmas}, aggregated_by: :sum

  has_many :dilemmas

  validates :name, presence: true, uniqueness: true

  
    def voted_for?(dilemma)
      evaluations.exists?(target_type: dilemma.class, target_id: dilemma.id).present?
    end 


end
