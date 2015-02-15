json.array!(@pots) do |pot|
  json.extract! pot, :id, :user_id, :descritpion, :cash_demand, :cash_collected, :credits_collected
  json.url pot_url(pot, format: :json)
end
