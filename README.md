# Advanced ActiveRecord Associations and Queries

- custom associations
- multiple relationships to the same model
- self joins
- scopes
- polymorphic associations

# class AddTaskablePolymorphismToTasks < ActiveRecord::Migration[5.1]
#   # polymorphic
#   def change
#     remove_column :tasks, :user_id
#     remove_column :tasks, :project_id
#     add_column :tasks, :taskable_id, :bigint
#     add_column :tasks, :imageable_type, :string
#   end
# end
