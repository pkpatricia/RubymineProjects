json.array!(@authors) do |author|
  json.extract! author, :id, :firstname, :lastname, :birthdate
  json.url author_url(author, format: :json)
end
