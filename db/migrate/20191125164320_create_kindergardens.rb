class CreateKindergardens < ActiveRecord::Migration[5.2]
  def change
    create_table :kindergardens do |t|
      t.string :name
      t.string :address
      t.string :language
      t.integer :capacity
      t.string :photo

      t.timestamps
    end
  end
end
