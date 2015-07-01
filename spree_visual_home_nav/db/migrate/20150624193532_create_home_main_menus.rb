class CreateHomeMainMenus < ActiveRecord::Migration
  def change
    create_table :home_main_menus do |t|
      t.string :title
      t.string :meta_title
      t.text :meta_description
      t.string :meta_keywords
      t.text :alt
      t.boolean :active

      t.timestamps null: false
    end
  end
end
