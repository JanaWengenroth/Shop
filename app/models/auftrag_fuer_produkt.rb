class AuftragFuerProdukt < ActiveRecord::Base
  
  belongs_to :auftrag
  belongs_to :produkt
end
