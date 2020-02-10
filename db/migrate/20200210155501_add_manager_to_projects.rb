class AddManagerToProjects < ActiveRecord::Migration[5.1]
  # custom association 
  def change
    add_reference :projects, :manager, index: true
    # add_column :projects, :manager_id, :bigint, index: true
  end
end
