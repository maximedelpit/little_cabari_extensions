class AddAttachmentToHomeMainMenus < ActiveRecord::Migration
  def change
    add_attachment :spree_home_main_menus, :attachment
  end
end
