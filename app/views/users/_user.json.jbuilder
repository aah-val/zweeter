json.extract! user, :id, :name, :pseudo, :photo, :description, :created_at, :updated_at
json.url user_url(user, format: :json)
