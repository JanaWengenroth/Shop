class CreateUnterprodukts < ActiveRecord::Migration
  def change
    create_table :unterprodukts do |t|
      t.integer :menge

      t.timestamps
    end
  end
end
