Spree::OptionType.class_eval do
  # attr_accessible :prototypes
  has_many :prototype_main_option_types, class_name: 'Spree::Prototype', foreign_key: :main_option_type_id
  has_many :prototype_secondary_option_types, class_name: 'Spree::Prototype', foreign_key: :prototype_secondary_option_types_id
end