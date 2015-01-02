json.array!(@auftrags) do |auftrag|
  json.extract! auftrag, :id, :datum
  json.url auftrag_url(auftrag, format: :json)
end
