class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :status
      t.date :created_at
      t.references :kindergarden, foreign_key: true
      t.references :kid, foreign_key: true

      t.timestamps
    end
  end
end
