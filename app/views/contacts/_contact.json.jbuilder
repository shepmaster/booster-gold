json.extract! contact, :id, :name, :email, :start_at, :end_at, :state, :city, :created_at, :updated_at
json.url contact_url(contact, format: :json)
