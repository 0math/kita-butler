class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :primary_language
      t.string :secondary_language
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
