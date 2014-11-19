json.array!(@races) do |race|
  json.extract! race, :id, :name, :status, :time, :format
  json.url race_url(race, format: :json)
end
