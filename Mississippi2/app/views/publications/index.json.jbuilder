json.array!(@publications) do |publication|
  json.extract! publication, :id, :author_id, :book_id
  json.url publication_url(publication, format: :json)
end
