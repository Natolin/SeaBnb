class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :boat_id
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.references :user, foreign_key: true
      t.references :boat, foreign_key: true

      t.timestamps
    end
  end
end
