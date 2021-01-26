class Page < ApplicationRecord
  belongs_to :user, inverse_of: :pages
  has_rich_text :body

  validates :title, :user_id, presence: true
  validates :title, uniqueness: true

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_paper_trail # Track changes to this model's attributes.
end
