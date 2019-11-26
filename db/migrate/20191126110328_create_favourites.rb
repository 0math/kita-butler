class CreateFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
      t.references :kid, foreign_key: true
      t.references :kindergarden, foreign_key: true

      t.timestamps
    end
  end
end
