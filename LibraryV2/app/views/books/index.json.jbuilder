json.array!(@books) do |book|
  json.extract! book, :id, :title, :publicationdate, :pagecount, :language
  json.url book_url(book, format: :json)
end
