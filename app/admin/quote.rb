ActiveAdmin.register Quote do
  permit_params :customer_id, :quote_number, :quote_date, :valid_to, :total, :created_at, :updated_at
  menu parent: 'Agreements and Documents'
  index do
    column "Quote ID", :id
    column :customer
    column :quote_date
    column :valid_to
    column :total, :sortable => :total do |quote|
      div :class => "total" do
        number_to_currency quote.total
      end
    end
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :customer, :label => "Select Customer", :as => :select, :collection => Customer.all
    end
  end

  semantic_form_for @customer do |f|
    f.inputs do
      f.inputs :site

    end
  end




end
