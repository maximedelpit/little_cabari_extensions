Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'home_mgt_admin_sidebar_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/home_management_sidebar_menu'
)