class Visit < ApplicationRecord
  self.table_name = "visits"

  has_many :events, class_name: "Event"
  belongs_to :user, optional: true
end
