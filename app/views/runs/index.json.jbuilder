json.array!(@runs) do |run|
  json.extract! run, :id, :entry_id, :race, :number, :verdict, :result_time
  json.url run_url(run, format: :json)
end
