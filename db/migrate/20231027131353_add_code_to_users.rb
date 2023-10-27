class AddCodeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :code, :integer, limit: 5
  end
end
