json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :description, :address, :postcode, :suburb, :restaurant_type_id, :user_id
  json.url restaurant_url(restaurant, format: :json)
end
