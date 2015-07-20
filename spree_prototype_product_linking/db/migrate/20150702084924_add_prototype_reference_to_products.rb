class AddPrototypeReferenceToProducts < ActiveRecord::Migration
  def change
    add_reference :spree_products, :prototype, index: true, foreign_key: true
  end
end
