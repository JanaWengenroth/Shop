json.array!(@kundes) do |kunde|
  json.extract! kunde, :id, :vorname, :nachname, :email, :straße, :hausnummer, :plz, :tel
  json.url kunde_url(kunde, format: :json)
end
