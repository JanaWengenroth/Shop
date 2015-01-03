class CreateAuftragFuerProdukts < ActiveRecord::Migration
  def change
    create_table :auftrag_fuer_produkts do |t|
      t.integer :auftrag_id
      t.integer :produkt_id
      t.integer :stueckzahl

      t.timestamps
    end
  end
end
