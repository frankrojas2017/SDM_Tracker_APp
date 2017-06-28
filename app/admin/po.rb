ActiveAdmin.register Po do
  menu parent: 'Agreements and Documents'

permit_params :Po_number, :customer_id, :quote_id, :date_received, :amount

end
