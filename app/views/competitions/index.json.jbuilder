json.array!(@competitions) do |competition|
  json.extract! competition, :id, :name, :description, :date_start, :date_end, :status, :format
  json.url competition_url(competition, format: :json)
end
