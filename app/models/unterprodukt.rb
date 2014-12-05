class Unterprodukt < ActiveRecord::Base
  belongs_to :oberprodukt, :class_name => 'Produkt', :foreign_key => 'oberprodukt_id'
  belongs_to :unterprodukt, :class_name => 'Produkt', :foreign_key => 'unterprodukt_id'




 def self.show_stuecklist(produkts)
    where("name LIKE (?)", "%#{produkts}%")
 end
  
 
end
