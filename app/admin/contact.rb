ActiveAdmin.register Contact do

  permit_params :last_name, :first_name, :address, :business_phone, :country, :mobile_phone, :email, :primary, :fax_number, :billing, :customer_id

end
