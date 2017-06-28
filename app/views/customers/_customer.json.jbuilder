json.extract! customer, :id, :name, :division, :site, :mailing_adress, :kms_version_id, :project_code, :created_at, :updated_at
json.url customer_url(customer, format: :json)
