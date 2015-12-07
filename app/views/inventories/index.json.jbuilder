json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :inventory_name, :inventory_starting_amount, :inventory_current_amount, :inventory_unit, :expiration, :lead_time_days
  json.url inventory_url(inventory, format: :json)
end
