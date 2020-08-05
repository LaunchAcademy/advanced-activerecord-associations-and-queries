# -- Original Associations
project_1 = Project.create(name: "Visit Oz" , description: "We're off to see the wizard!")
user_1 = User.create(first_name: "Dorothy" , last_name: "Gale",  email: "dorothy@kansas.com")
user_2 = User.create(first_name: "Cowardly", last_name: "Lion", email: "scared@overtherainbow.com")
user_3 = User.create(first_name: "Glinda", last_name: "The Good", email: "glinda@overtherainbow.com")
assignment = Assignment.create(user: user_1, project: project_1)
task_1 = Task.create(name: "Follow the Yellow Brick Road", description: "Skip off as the munchkins serenade", due_date: Date.today, user: user_1, project: project_1)

# Users
nick_1 = User.create(first_name: "Nick", last_name: "Alberts", email: "nick.alberts@launchacademy.com")

# Project / Manager Seed
project_2 = Project.create(name: "Incorporate a Nick only company" , description: "just throw money at the problem", manager_id: nick_1.id, urgent: true)

assignment = Assignment.create(user: nick_1, project: project_1)
assignment_2 = Assignment.create(user: nick_1, project: project_2)

# Employee / Manager Seed 
cooper_1 = User.create(first_name: "Cooper", last_name: "Olson", email: "cooper@dog.com", manager_id: nick_1.id)
assignment_3 = Assignment.create(user: cooper_1, project: project_2)
task_1 = Task.create(name: "perform occult HR ritual", description: "Cthulu reigns supreme", due_date: Date.today, user_id: nick_1.id, project: project_2)

# -- Polymorphic

# task_1 = Task.create(name: "create a state of Nick", description: "both in our minds and on the map", due_date: Date.today, taskable_id: nick_1.id, taskable_type: "User")
