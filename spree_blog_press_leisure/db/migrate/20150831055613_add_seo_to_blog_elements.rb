class AddSeoToBlogElements < ActiveRecord::Migration
  def change
    add_column :spree_blog_elements, :permalink, :string
    add_column :spree_blog_elements, :alt, :string
    add_column :spree_blog_elements, :meta_title, :string
    add_column :spree_blog_elements, :meta_keywords, :string
    add_column :spree_blog_elements, :meta_description, :string
  end
end
