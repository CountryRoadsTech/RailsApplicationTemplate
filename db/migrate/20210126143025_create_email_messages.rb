class CreateEmailMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :email_messages do |t|
      t.references :user, polymorphic: true
      t.text :to
      t.string :mailer
      t.text :subject
      t.timestamp :sent_at
      # The following are used to track when emails are opened and if/when links are clicked.
      t.string :token
      t.timestamp :opened_at
      t.timestamp :clicked_at
    end

    add_index :email_messages, :token
  end
end
