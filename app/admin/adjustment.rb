ActiveAdmin.register Adjustment do
permit_params :reason, :quote_id, :price
menu parent: 'Types & Lists'

  index do
    column "Reason for the Adjustment", :reason
    column :quote_id
    column :price, :sortable => :price do |adjustment|
      div :class => "price" do
        number_to_currency adjustment.price
      end
    end
    actions
  end
end