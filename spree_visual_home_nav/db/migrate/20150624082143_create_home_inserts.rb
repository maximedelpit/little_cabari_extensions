class CreateHomeInserts < ActiveRecord::Migration
  def change
    create_table :spree_home_inserts do |t|
      t.string :title
      t.string :meta_title
      t.text :meta_description
      t.string :meta_keywords
      t.text :alt
      t.boolean :active, default: false

      t.timestamps null: false
    end
  end
end
