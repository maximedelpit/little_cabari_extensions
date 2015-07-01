class CreateHomeBullets < ActiveRecord::Migration
  def change
    create_table :spree_home_bullets do |t|
      t.references :taxon, index: true, foreign_key: true
      t.references :home_main_menu, index: true, foreign_key: true
      t.string :color
      t.float :x
      t.float :y

      t.timestamps null: false
    end
  end
end
