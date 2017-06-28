json.extract! invoice, :id, :invoice_number, :date_sent, :po_number_id, :paid, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
