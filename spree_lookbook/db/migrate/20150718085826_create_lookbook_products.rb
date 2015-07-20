class CreateLookbookProducts < ActiveRecord::Migration
  def change
    create_table :spree_lookbook_products do |t|
      t.string :name
      t.integer :position
      t.references :lookbook, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
