class AddIsAvailableToKita < ActiveRecord::Migration[5.2]
  def change
    add_column :kindergardens, :is_available, :boolean
  end
end
