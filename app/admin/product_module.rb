ActiveAdmin.register ProductModule do

permit_params :module_type_id, :customer_id, :po_id
menu parent: 'Types & Lists'
end
