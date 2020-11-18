class AddFirstName1ToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name1, :string
  end
end
