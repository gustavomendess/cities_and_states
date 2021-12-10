class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :state_id
      t.timestamps
    end
    add_foreign_key :cities, :states, column: :state_id
  end
end
