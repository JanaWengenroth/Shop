class AddRecursionToUnterproducts < ActiveRecord::Migration
  def change
    add_column :unterprodukts, :oberprodukt_id, :integer
    add_column :unterprodukts, :unterprodukt_id, :integer
  end
end
