ActiveAdmin.register Invoice do

permit_params :invoice_number, :date_sent, :po_id, :paid

end
