json.extract! company, :id, :name, :short_description, :city, :state, :created_at, :updated_at
json.url company_url(company, format: :json)
