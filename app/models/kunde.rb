class Kunde < ActiveRecord::Base
  
  has_many:auftrag
  has_many:produtks, :through => :azuftrag
  
end
