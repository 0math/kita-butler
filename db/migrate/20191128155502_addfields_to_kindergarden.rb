class AddfieldsToKindergarden < ActiveRecord::Migration[5.2]
  def change
    add_column :kindergardens, :opening_hours, :string
    add_column :kindergardens, :closing_hours, :string
    add_column :kindergardens, :size, :string
    add_column :kindergardens, :age_structure, :string
    add_column :kindergardens, :edu_system, :string
    add_column :kindergardens, :aesthetic_edu, :string
  end
end
