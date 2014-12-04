class Unterprodukt < ActiveRecord::Base
  belongs_to :oberprodukt, :class_name => 'Produkt', :foreign_key => 'oberprodukt_id'
  belongs_to :unterprodukt, :class_name => 'Produkt', :foreign_key => 'unterprodukt_id'
end
