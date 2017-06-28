json.extract! agreement, :id, :agreement_type_id, :start_date, :end_date, :approved, :link, :created_at, :updated_at
json.url agreement_url(agreement, format: :json)
