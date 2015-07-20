class Spree::LookbookConfiguration < Spree::Preferences::Configuration
  preference :admin_lookbooks_per_page, :integer, :default => 25
  preference :admin_lookbooks_per_page, :integer, :default => 25
  preference :lookbooks_per_page, :integer, :default => 25
  preference :paginate_lookbooks_per_page, :boolean, :default => true
end