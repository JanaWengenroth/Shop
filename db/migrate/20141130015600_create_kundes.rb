class CreateKundes < ActiveRecord::Migration
  def change
    create_table :kundes do |t|
      t.string :vorname
      t.string :nachname
      t.string :email
      t.string :strasse
      t.integer :hausnummer
      t.integer :plz
      t.integer :tel

      t.timestamps
    end
  end
end
