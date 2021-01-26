class Event < ApplicationRecord
  include Ahoy::QueryMethods

  self.table_name = "events"

  belongs_to :visit
  belongs_to :user, optional: true
end
