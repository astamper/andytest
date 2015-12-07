json.array!(@crms) do |crm|
  json.extract! crm, :id, :crm_first_name, :crm_last_name, :crm_phone_number, :crm_email
  json.url crm_url(crm, format: :json)
end
