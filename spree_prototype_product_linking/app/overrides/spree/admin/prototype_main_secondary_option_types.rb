Deface::Override.new(:virtual_path => "spree/admin/prototypes/_form",
  :name => "main_option_type_for_prototype",
  :insert_after => "div#option_types",
  :text => "
    <div id='main_option_type' class='col-md-6' data-hook>
      <% option_types_collection = [] %>
      <% Spree::OptionType.all.map do |ot| %>
        <% presentation = ot.presentation.to_s %>
        <% name = ot.name.to_s %>
        <% option_types_collection << [presentation + '(' + name + ')', ot.id] %>
      <% end %>
      <%= f.field_container :main_option_type, class: ['form-group'] do %>
        <%= f.label :main_option_type_id, t('.main_option_types') %><br>
        <%= f.select :main_option_type_id, option_types_collection, {}, { multiple: false, class: 'select2' } %>
      <% end %>
    </div>
    <div id='secondary_option_type' class='col-md-6' data-hook>
      <%= f.field_container :secondary_option_type, class: ['form-group'] do %>
        <%= f.label :secondary_option_type_id, t('.secondary_option_types') %><br>
        <%= f.select :secondary_option_type_id, option_types_collection, {}, { multiple: false, class: 'select2' } %>
      <% end %>
    </div>
")