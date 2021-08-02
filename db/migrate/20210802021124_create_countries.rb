class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :habitants
      t.integer :superficie
      t.references :continent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
