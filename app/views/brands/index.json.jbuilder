json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :contact_name, :contact_phone, :email
  json.url brand_url(brand, format: :json)
end
