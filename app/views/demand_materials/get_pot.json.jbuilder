json.array!(@demands) do |demand_material|
  json.extract! demand_material, :id, :pot_id, :material_id, :quantity
  json.url demand_material_url(demand_material, format: :json)
end