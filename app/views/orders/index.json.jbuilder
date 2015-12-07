json.array!(@orders) do |order|
  json.extract! order, :id, :shipping_address, :fufillment_date, :fufillment_time, :fufillment_status, :order_amount, :order_unit, :per_unit_price, :crm_id
  json.url order_url(order, format: :json)
end
