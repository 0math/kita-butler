class RemoveKidRefernceFromFavourites < ActiveRecord::Migration[5.2]
  def change
    remove_reference :favourites, :kid, foreign_key: true
  end
end
