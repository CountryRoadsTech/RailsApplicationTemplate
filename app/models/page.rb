# == Schema Information
#
# Table name: pages
#
#  id         :bigint           not null, primary key
#  slug       :string
#  title      :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_pages_on_slug     (slug) UNIQUE
#  index_pages_on_title    (title) UNIQUE
#  index_pages_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_84a58494eb  (user_id => users.id)
#
class Page < ApplicationRecord
  belongs_to :user, inverse_of: :pages
  has_rich_text :body

  validates :title, :user_id, presence: true
  validates :title, uniqueness: true

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_paper_trail # Track changes to this model's attributes.
end
