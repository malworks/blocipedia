class User < ApplicationRecord
  has_many :wikis

  before_save {self.role ||= :standard }

  enum role: [:standard, :premium, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
