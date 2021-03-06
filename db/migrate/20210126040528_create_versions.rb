# This migration creates the `versions` table, the only schema PaperTrail requires.
# All other migrations PaperTrail provides are optional.
class CreateVersions < ActiveRecord::Migration[6.1]

  # The largest text column available in all supported RDBMS is
  # 1024^3 - 1 bytes, roughly one gigabyte.
  TEXT_BYTES = 1_073_741_823

  def change
    create_table :versions do |t|
      t.string   :item_type, {:null=>false}
      t.bigint   :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object, limit: TEXT_BYTES

      t.datetime :created_at
    end
    add_index :versions, %i(item_type item_id)
  end
end
