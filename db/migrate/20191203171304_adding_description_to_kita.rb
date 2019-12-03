class AddingDescriptionToKita < ActiveRecord::Migration[5.2]
  def change
    add_column :kindergardens, :description, :text
  end
end
