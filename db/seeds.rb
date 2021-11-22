# -- wipe current database
users = User.destroy_all
projects = Project.destroy_all
assignments = Assignment.destroy_all
tasks = Task.destroy_all

# Users
user_1 = User.create(first_name: "Dorothy" , last_name: "Gale",  email: "dorothy@kansas.com")
user_2 = User.create(first_name: "Cowardly", last_name: "Lion", email: "scared@overtherainbow.com")
user_3 = User.create(first_name: "Glinda", last_name: "The Good", email: "glinda@overtherainbow.com")
nick_1 = User.create(first_name: "Nick", last_name: "Alberts", email: "nick.alberts@launchacademy.com")

# Employee / Manager Seed 
cooper_1 = User.create(first_name: "Cooper", last_name: "Olson", email: "cooper@dog.com", manager: nick_1)

# Projects
project_1 = Project.create(name: "Visit Oz" , description: "We're off to see the wizard!")

# Project / Manager Seed
project_2 = Project.create(name: "Incorporate a Nick only company" , description: "just throw money at the problem", manager_id: nick_1.id, urgent: true)

# Assignments
assignment = Assignment.create(user: user_1, project: project_1)
assignment_1 = Assignment.create(user: nick_1, project: project_1)
assignment_2 = Assignment.create(user: user_2, project: project_1)
assignment_3 = Assignment.create(user: nick_1, project: project_2)
assignment_4 = Assignment.create(user: cooper_1, project: project_2)
assignment_5 = Assignment.create(user: user_3, project: project_2)

# Tasks
task_1 = Task.create(name: "Follow the Yellow Brick Road", description: "Skip off as the munchkins serenade", due_date: Date.today, user: user_1, project: project_1)
task_2 = Task.create(name: "perform occult HR ritual", description: "Cthulu reigns supreme", due_date: Date.today, user: nick_1, project: project_2)

# -- Polymorphic
# task_2 = Task.create(name: "create a state of Nick", description: "both in our minds and on the map", due_date: Date.today, taskable_id: project_1.id, taskable_type: "Project")
# task_2 = Task.create(name: "create a state of Nick", description: "both in our minds and on the map", due_date: Date.today, taskable: project_1)
# task_3 = Task.create(name: "create a associations", description: "cool, stuff", due_date: Date.today, taskable: cooper_1)

users = User.count
projects = Project.count
assignments = Assignment.count
tasks = Task.count
puts "#{users} users, #{projects} projects #{assignments} assignments, #{tasks} tasks"
