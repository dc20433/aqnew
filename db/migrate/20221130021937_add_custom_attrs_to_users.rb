class AddCustomAttrsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :contactN, :string
    add_column :users, :userNm, :string
  end
end
