class EmailMessage < ApplicationRecord
  belongs_to :user, polymorphic: true, inverse_of: :email_messages
end
