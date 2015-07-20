class AddOptionTypeInfosToPrototypes < ActiveRecord::Migration
  def change
    add_reference :spree_prototypes, :main_option_type, index: true, foreign_key: true
    add_reference :spree_prototypes, :secondary_option_type, index: true, foreign_key: true
  end
end
