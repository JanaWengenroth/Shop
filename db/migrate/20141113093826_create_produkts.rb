class CreateProdukts < ActiveRecord::Migration
  def change
    create_table :produkts do |t|
      t.string :name
      t.string :kategorie
      t.string :beschreibung
      t.integer :preis
      t.date :gueltigVon
      t.date :gueltigBis

      t.timestamps
      t.string "bild_file_name"
      t.string "bild_content_type"
      t.integer "bild_file_size"
      t.datetime "bild_updated_at"
    end
  end
end
