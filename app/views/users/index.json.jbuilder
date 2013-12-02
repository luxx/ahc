json.array!(@users) do |user|
  json.extract! user, :battletag, :skype, :deck, :email, :password
  json.url user_url(user, format: :json)
end