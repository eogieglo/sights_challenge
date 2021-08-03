class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.references :country, null: false, foreign_key: true
      t.references :sight, null: false, foreign_key: true
      
      #t.boolean :replica

      t.timestamps
    end
  end
end
