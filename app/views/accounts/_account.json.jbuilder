json.extract! account, :id, :incoming_email, :outgoing_email, :crms, :created_at, :updated_at
json.url account_url(account, format: :json)