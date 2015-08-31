class CreateBlogElements < ActiveRecord::Migration
  def change
    create_table :spree_blog_elements do |t|
      t.string :title
      t.string :category
      t.string :author
      t.string :content

      t.timestamps null: false
    end
  end
end
