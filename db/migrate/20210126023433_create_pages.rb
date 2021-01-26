class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.text :title, null: false, unique: true
      t.string :slug, unique: true

      t.timestamps
    end

    add_index :pages, :title, unique: true
    add_index :pages, :slug, unique: true
  end
end
