class AddPasswordToUsers < ActiveRecord::Migration[5.2]
  def change
    add_columns :users, :password, :string
  end
end
