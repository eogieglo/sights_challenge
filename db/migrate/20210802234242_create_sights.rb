class CreateSights < ActiveRecord::Migration[6.1]
  def change
    create_table :sights do |t|
      t.string :name, null: false
      t.date :creation_date, null: false
      t.float :height, null: false
      t.text :history

      t.timestamps
    end
    add_index :sights, :name, unique: true
  end
end
