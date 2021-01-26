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
require 'faker'

FactoryBot.define do
  factory :page do
    association :user, factory: :admin_user
    title { Faker::String(length: 1..1024).unique }
    body { Faker::Markdown.sandwich }
  end
end
