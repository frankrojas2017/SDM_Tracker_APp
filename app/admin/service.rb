ActiveAdmin.register Service do
permit_params :quote_id, :Service_type, :quantity, :price, :service_total, :term_start, :term_end, :term_length, :annual_increase, :CRM_Number
menu parent: 'Agreements and Documents'
end
