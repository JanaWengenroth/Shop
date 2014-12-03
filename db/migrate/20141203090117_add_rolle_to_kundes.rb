class AddRolleToKundes < ActiveRecord::Migration
#  def change
#    add_column :kundes, :rolle, :integer
#  end
  def self.up
    change_table :kundes do |t|
      t.integer :rolle
    end
  end

  def self.down
    remove_integer :kundes, :rolle
  end
end
