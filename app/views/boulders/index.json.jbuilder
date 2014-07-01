json.array!(@boulders) do |boulder|
  json.extract! boulder, :id, :name
  json.url boulder_url(boulder, format: :json)
end
