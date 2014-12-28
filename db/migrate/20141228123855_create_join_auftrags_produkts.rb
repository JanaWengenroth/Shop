class CreateJoinAuftragsProdukts < ActiveRecord::Migration
  def change
    create_table :auftrags_produkts, id: false do |t|
      t.integer :autrags_id
      t.integer :produkts_id
    end
  end
end
