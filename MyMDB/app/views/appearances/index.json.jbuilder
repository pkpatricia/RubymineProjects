json.array!(@appearances) do |appearance|
  json.extract! appearance, :id, :movie_id, :actor_id
  json.url appearance_url(appearance, format: :json)
end
