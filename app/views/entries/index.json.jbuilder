json.array!(@entries) do |entry|
  json.extract! entry, :id, :user_id, :number
  json.url entry_url(entry, format: :json)
end
