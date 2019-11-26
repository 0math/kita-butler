class AddPhoneEmailToKinders < ActiveRecord::Migration[5.2]
  def change
    add_column :kindergardens, :phone, :string
    add_column :kindergardens, :email, :string
  end
end
