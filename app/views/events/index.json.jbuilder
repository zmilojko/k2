json.array!(@events) do |event|
  json.extract! event, :id, :name, :date_start, :date_end, :location, :location_coordinates
  json.url event_url(event, format: :json)
end
