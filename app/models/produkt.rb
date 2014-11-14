require 'paperclip/media_type_spoof_detector'
module Paperclip
 class MediaTypeSpoofDetector
 def spoofed?
 false
 end
 end
end

class Produkt < ActiveRecord::Base

  def self.search(query)
    where("name LIKE (?)", "%#{query}%")
  end
  
  has_attached_file :bild, :styles => { :small => "150x150>" },
 :url => "/assets/produkts/:id/:style/:basename.:extension",
 :path => ":rails_root/public/assets/produkts/:id/:style/:basename.:extension"

   #validates_attachment_presence :bild
   validates_attachment_size :bild, :less_than => 5.megabytes
   validates_attachment_content_type :bild, :content_type => ['image/jpeg', 'image/png']
   has_attached_file :bild, :styles => { :medium => "150x150>", :thumb => "100x100>" }
end
