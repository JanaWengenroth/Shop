class AddAttachmentBildToProdukts < ActiveRecord::Migration
    def self.up
      add_attachment :produkts, :bild
    end

    def self.down
      remove_attachment :produkts, :bild
    end
end
