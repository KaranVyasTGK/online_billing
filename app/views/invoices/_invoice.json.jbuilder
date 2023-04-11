json.extract! invoice, :id, :amount, :due_date, :status, :paid_on, :client_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
