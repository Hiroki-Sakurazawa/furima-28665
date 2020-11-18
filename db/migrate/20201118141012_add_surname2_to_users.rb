class AddSurname2ToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :surname2, :string
  end
end
