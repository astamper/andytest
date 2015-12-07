json.array!(@components) do |component|
  json.extract! component, :id, :component_name, :component_amount, :component_unit, :product_id
  json.url component_url(component, format: :json)
end
