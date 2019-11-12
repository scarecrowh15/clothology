json.extract! user, :id, :user_id, :full_name, :phone_number, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
