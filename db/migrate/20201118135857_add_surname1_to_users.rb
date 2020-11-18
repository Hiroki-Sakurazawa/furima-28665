class AddSurname1ToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :surname1, :string
  end
end
