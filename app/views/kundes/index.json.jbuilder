json.array!(@kundes) do |kunde|
  json.extract! kunde, :id, :vorname, :nachname, :email, :stra�e, :hausnummer, :plz, :tel
  json.url kunde_url(kunde, format: :json)
end
