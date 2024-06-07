class ChangeNameToEmail < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :name, :string
    add_column :users, :email, :string
  end
end
