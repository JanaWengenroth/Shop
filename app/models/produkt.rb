require 'paperclip/media_type_spoof_detector'

class Array

   def array?() true end

   def seq?() true end

   def prepend(obj) [obj] + self end

   def rest()
     if(self.length != 0)
       self[1..(self.size - 1)]
     end
   end

end 

module Paperclip
 class MediaTypeSpoofDetector
 def spoofed?
 false
 end
 end
end

class Produkt < ActiveRecord::Base

  has_many :auftrag_fuer_produkts
  has_many :auftrags, through: :auftrag_fuer_produkts

  has_many:kunde, :through => :auftrags
  
  has_many :oberprodukte, :class_name => 'Unterprodukt', :foreign_key => 'oberprodukt_id'
  has_many :unterprodukte, :class_name => 'Unterprodukt', :foreign_key => 'unterprodukt_id'
 
  protected
  def self.search(query)
    where("name LIKE (?)", "%#{query}%")
  end
  
  public
  def self.get_oberprodukt()
    where(:kategorie => 'A')
  end
  
  public
  def self.get_auftrag(id)
    where(:produkt_id => "%#{id}%")
  end
  
  def self.produkt_aus_id(id) 
      #SELECT * FROM `produkts` WHERE `id` = 1;
      where( "`id` = ?" , id)
           
  end 
  
#  public
#  def self.sum_of_stueckzahl(p_id, date)
#    sum(:stueckzahl, :condition => ["produkt_id= ? AND datum LIKE (?)",
#                                    p_id, "%#{date}%"])
#  end
  

#  def show_stuecklist()
#     where("oberprodukt_id LIKE (?)", "%#{self}%")
#  end
  
  has_attached_file :bild, :styles => { :small => "150x150>" },
 :url => "/assets/produkts/:id/:style/:basename.:extension",
 :path => ":rails_root/public/assets/produkts/:id/:style/:basename.:extension"

   #validates_attachment_presence :bild
   validates_attachment_size :bild, :less_than => 5.megabytes
   validates_attachment_content_type :bild, :content_type => ['image/jpeg', 'image/png']
   has_attached_file :bild, :styles => { :medium => "150x150>", :thumb => "100x100>" }


end
