json.array!(@delivery_methods) do |delivery_method|
  json.extract! delivery_method, :user_id, :type, :options
  json.url delivery_method_url(delivery_method, format: :json)
end
