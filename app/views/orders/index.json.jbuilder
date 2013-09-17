json.array!(@orders) do |order|
  json.extract! order, :user_id, :delivery_method_id, :payment_method_id, :product_id
  json.url order_url(order, format: :json)
end
