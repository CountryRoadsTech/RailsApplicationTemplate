# == Schema Information
#
# Table name: email_messages
#
#  id         :bigint           not null, primary key
#  clicked_at :datetime
#  mailer     :string
#  opened_at  :datetime
#  sent_at    :datetime
#  subject    :text
#  to         :text
#  token      :string
#  user_type  :string
#  user_id    :bigint
#
# Indexes
#
#  index_email_messages_on_token  (token)
#  index_email_messages_on_user   (user_type,user_id)
#
class EmailMessage < ApplicationRecord
  belongs_to :user, polymorphic: true, inverse_of: :email_messages
end
