class Auftrag < ActiveRecord::Base

has_and_belongs_to_many :produkts
#belongs_to:produkt
belongs_to:kunde

end
