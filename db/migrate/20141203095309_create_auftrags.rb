class CreateAuftrags < ActiveRecord::Migration
  def change
    create_table :auftrags do |t|
      t.date :datum
      t.integer :stueckzahl

      t.timestamps
      
    
    end
  end
end
