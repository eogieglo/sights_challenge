class CreateContinents < ActiveRecord::Migration[6.1]
  def change
    create_table :continents do |t|
      t.string :name

      t.timestamps
    end
    add_index :continents, :name, unique: true
  end
end
