class CreateLookbooks < ActiveRecord::Migration
  def change
    create_table :spree_lookbooks do |t|
      t.string :title
      t.text :description
      t.string :season
      t.string :permalink
      t.boolean :active
      t.integer :position

      t.timestamps null: false
    end
  end
end
