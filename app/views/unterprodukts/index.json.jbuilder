json.array!(@unterprodukts) do |unterprodukt|
  json.extract! unterprodukt, :id, :menge
  json.url unterprodukt_url(unterprodukt, format: :json)
end
