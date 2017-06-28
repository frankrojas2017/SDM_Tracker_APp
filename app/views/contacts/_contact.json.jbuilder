json.extract! contact, :id, :last_name, :first_name, :address, :business_phone, :country, :mobile_phone, :email, :primary, :fax_number, :billing, :customer_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
