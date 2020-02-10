class AddManagerToUsers < ActiveRecord::Migration[5.1]
  # self-joins
  def change
    add_reference :users, :manager, index: true
    # add_column :users, :manager_id, :bigint, index: true
  end
end
