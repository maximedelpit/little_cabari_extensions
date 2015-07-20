class CreateLookbookImages < ActiveRecord::Migration
  def change
    create_table :spree_lookbook_images do |t|
      t.string :name
      t.integer :position
      t.references :lookbook, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
