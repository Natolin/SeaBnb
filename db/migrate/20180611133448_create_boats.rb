class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.integer :capacity
      t.text :description
      t.integer :price
      t.string :boat_type
      t.integer :user_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
