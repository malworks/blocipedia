class Wiki < ApplicationRecord
  belongs_to :user
  has_many :collaborators
  has_many :collaborators, through: :collaborators, source: :user
  scope :visible_to, -> (user) { user.role == 'premium' || user.role == 'admin' ? all : where(private: false) }
  # validates :user, presence: true
end
