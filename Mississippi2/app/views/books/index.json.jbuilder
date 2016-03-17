json.array!(@books) do |book|
  json.extract! book, :id, :title, :publication_date, :page_count, :language, :price
  json.url book_url(book, format: :json)
end
