class AddProduktIdToAuftrag < ActiveRecord::Migration
  def change
    add_column :auftrags, :produkt_id, :integer
  end
end
