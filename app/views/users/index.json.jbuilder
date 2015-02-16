json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :date_of_birth, :email, :password, :credits
  json.url user_url(user, format: :json)
end
