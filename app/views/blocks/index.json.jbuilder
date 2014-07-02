json.array!(@blocks) do |block|
  json.extract! block, :id, :name
  json.url block_url(block, format: :json)
end
