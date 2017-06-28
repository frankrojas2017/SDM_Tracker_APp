json.extract! service, :id, :quote_number_id, :Service_type, :quantity, :price, :service_total, :term_start, :term_end, :term_length, :annual_increase, :CRM_Number, :created_at, :updated_at
json.url service_url(service, format: :json)
