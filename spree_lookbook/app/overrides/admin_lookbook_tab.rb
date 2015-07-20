Deface::Override.new( :name => "admin_lookbook_tab",
                      :virtual_path => "spree/layouts/admin",
                      :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                      :text => "
                        <ul class='nav nav-sidebar'>
                          <%= tab :lookbooks, :icon => 'book' %>
                        </ul>
                    ")