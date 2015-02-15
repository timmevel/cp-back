json.array!(@materials) do |material|
  json.extract! material, :id, :type, :image
  json.url material_url(material, format: :json)
end
