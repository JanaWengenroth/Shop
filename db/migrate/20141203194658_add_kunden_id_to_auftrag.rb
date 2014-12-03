class AddKundenIdToAuftrag < ActiveRecord::Migration
  def change
    add_column :auftrags, :kunden_id, :integer
  end
end
