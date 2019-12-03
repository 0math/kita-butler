class AddReferenceToFavourites < ActiveRecord::Migration[5.2]
  def change
    add_reference :favourites, :user, foreign_key: true
  end
end
