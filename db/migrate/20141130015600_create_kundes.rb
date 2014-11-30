class CreateKundes < ActiveRecord::Migration
  def change
    create_table :kundes do |t|
      t.string :vorname
      t.string :nachname
      t.string :email
      t.string :strasse
      t.int :hausnummer
      t.int :plz
      t.int :tel

      t.timestamps
    end
  end
end
