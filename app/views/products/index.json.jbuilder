json.array!(@products) do |product|
  json.extract! product, :id, :category, :product_name, :order_id
  json.url product_url(product, format: :json)
end
