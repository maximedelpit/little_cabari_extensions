class AddAttachmentToHomeInserts < ActiveRecord::Migration
  def change
    add_attachment :spree_home_inserts, :attachment
  end
end
