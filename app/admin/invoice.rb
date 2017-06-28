ActiveAdmin.register Invoice do

permit_params :invoice_number, :date_sent, :po_id, :paid

menu parent: 'Agreements and Documents'
end
