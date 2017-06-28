ActiveAdmin.register Fee do
permit_params :quote_id, :fee_type_id, :price
menu parent: 'Types & Lists'
=begin
index do
  column :quote_id
  column :fee_type_id
  column :price, :sortable => :price do |adjustment|
    div :class => "price" do
      number_to_currency adjustment.price
    end
  end
  actions
end
=end
end
