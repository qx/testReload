json.array!(@arcitles) do |arcitle|
  json.extract! arcitle, :id, :title
  json.url arcitle_url(arcitle, format: :json)
end
