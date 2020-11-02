# Advanced ActiveRecord Associations and Queries

### Custom Association (Manager / Project)
- Users (manager) / Projects tables
- optional one to many relationship
- defines an additional relationship between two tables
- simple foreign_key addition
- no role column needed
- use of `class_name` and `foreign_key`

### Self Relationships & Joins
- an employee (user) has a manager (user)
- can be made into a join table

### Polymorphic Associations
- likely not relevant to BTs
- what if a record can belong to either a user, or a project?
- designate a table / resource Relationship
- designate the id of the related record
- show AR guide intro
- show AR guide diagram
- show seeds  for context

 class AddTaskablePolymorphismToTasks < ActiveRecord::Migration[5.1]

   def change
     remove_column :tasks, :user_id
     remove_column :tasks, :project_id

     add_column :tasks, :taskable_id, :bigint
     add_column :tasks, :taskable_type, :string
   end
 end

### Future Todos
- moar diagrams
- frontend
- service object section


# class TaskablePolymorphismToTasks < ActiveRecord::Migration[5.1]
#   # polymorphic
#   def change
#     remove_column :tasks, :user_id
#     remove_column :tasks, :project_id
#
#     add_column :tasks, :taskable_id, :bigint
#     add_column :tasks, :taskable_type, :string
#   end
# end
