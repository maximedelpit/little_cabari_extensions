class AddAttachmentAttachmentToBlogElements < ActiveRecord::Migration
  def self.up
    change_table :spree_blog_elements do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :spree_blog_elements, :attachment
  end
end
