class AddManagerToUsers < ActiveRecord::Migration[5.1]
  # self-joins
  def change
    add_column :users, :manager_id, :bigint
    add_index :users, :manager_id
  end
end
