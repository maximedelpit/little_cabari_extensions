Deface::Override.new( :virtual_path => "spree/layouts/admin",
                      :name => "admin_blog_tab",
                      :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                      :text => '
                        <ul class="nav nav-sidebar">
                          <%= tab :blog_elements, :icon => "heart" %>
                        </ul>
                    ')