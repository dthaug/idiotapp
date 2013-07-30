class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :avatar
  
  has_many :evaluations, class_name: "RSEvaluation", as: :source
  has_reputation :votes, source: {reputation: :votes, of: :dilemmas}, aggregated_by: :sum

  has_many :dilemmas

  validates :name, presence: true, uniqueness: true

  validates_attachment :avatar,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }

  has_attached_file :avatar, styles: { thumb: "38x38",
                                      medium: "300x300#",
                                      big: "750x750#"},
                                      :default_url => '/images/missing_style.jpg'

  
    def voted_for?(dilemma)
      evaluations.exists?(target_type: dilemma.class, target_id: dilemma.id).present?
    end 


end
