class User < ApplicationRecord
  # Include default devise modules. Others available are: :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  has_many :pages, inverse_of: :user
  has_many :login_activities, as: :user

  has_paper_trail # Track changes to this model's attributes.
end
