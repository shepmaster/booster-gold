json.extract! client, :id, :company_name, :email, :phone, :description, :created_at, :updated_at
json.url client_url(client, format: :json)
