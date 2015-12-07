json.array!(@manufactorings) do |manufactoring|
  json.extract! manufactoring, :id, :batch_amount, :batch_unit, :batch_date, :batch_status, :order_id
  json.url manufactoring_url(manufactoring, format: :json)
end
