json.array!(@auftrags) do |auftrag|
  json.extract! auftrag, :id, :datum, :stueckzahl
  json.url auftrag_url(auftrag, format: :json)
end
