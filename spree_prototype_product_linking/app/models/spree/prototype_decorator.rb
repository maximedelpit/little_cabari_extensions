Spree::Prototype.class_eval do
  # attr_accessible :main_option_type, :secondary_option_type

  has_many :products
  belongs_to :main_option_type, class_name: 'Spree::OptionType'
  belongs_to :secondary_option_type, class_name: 'Spree::OptionType'
end