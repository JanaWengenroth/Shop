json.array!(@produkts) do |produkt|
  json.extract! produkt, :id, :name, :kategorie, :beschreibung, :preis, :gueltigVon, :gueltigBis
  json.url produkt_url(produkt, format: :json)
end
