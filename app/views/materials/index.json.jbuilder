json.array!(@materials) do |material|
  json.extract! material, :id, :type_of_good, :image
  json.url material_url(material, format: :json)
end
