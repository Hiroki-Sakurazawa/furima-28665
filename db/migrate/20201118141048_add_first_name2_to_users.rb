class AddFirstName2ToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name2, :string
  end
end
