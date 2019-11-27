class AddGenderToKid < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :gender, :string
  end
end
