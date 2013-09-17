json.array!(@credit_cards) do |credit_card|
  json.extract! credit_card, :first_name, :last_name, :number, :month, :year, :ccv
  json.url credit_card_url(credit_card, format: :json)
end
