class Auftrag < ActiveRecord::Base

  has_many :auftrag_fuer_produkts
  has_many :produkts, through: :auftrag_fuer_produkts
  belongs_to:kunde

  
end
