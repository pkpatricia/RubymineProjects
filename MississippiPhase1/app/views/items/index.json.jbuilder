json.array!(@items) do |item|
  json.extract! item, :id, :shopping_cart_id, :book_id
  json.url item_url(item, format: :json)
end
