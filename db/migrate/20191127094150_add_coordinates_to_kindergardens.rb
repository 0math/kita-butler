class AddCoordinatesToKindergardens < ActiveRecord::Migration[5.2]
  def change
    add_column :kindergardens, :latitude, :float
    add_column :kindergardens, :longitude, :float
  end
end
