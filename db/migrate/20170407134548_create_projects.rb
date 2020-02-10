class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :description
      t.boolean :urgent, null: false, default: false

      t.timestamps null: false
    end
  end
end
