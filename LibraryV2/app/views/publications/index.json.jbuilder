json.array!(@publications) do |publication|
  json.extract! publication, :id, :book_id, :author_id
  json.url publication_url(publication, format: :json)
end
