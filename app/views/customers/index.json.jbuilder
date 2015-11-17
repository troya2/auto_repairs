json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :phone, :email, :model_id, :shop_id
  json.url customer_url(customer, format: :json)
end
