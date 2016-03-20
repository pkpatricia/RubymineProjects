json.array!(@items) do |item|
  json.extract! item, :id, :cart_id, :book_id, :quantity
  json.url item_url(item, format: :json)
end
