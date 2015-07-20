class AddAttachmentPictureToLookbookImages < ActiveRecord::Migration
  def self.up
    change_table :spree_lookbook_images do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :spree_lookbook_images, :picture
  end
end
