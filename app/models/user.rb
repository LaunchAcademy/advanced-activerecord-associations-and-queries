class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :assignments
  has_many :projects, through: :assignments
  has_many :tasks


  

  # User(manager) / Projects relationship: custom association - what if a user can be both working on the project and managing it
  has_many :managed_projects, class_name: "Project", foreign_key: "manager_id"

  # self-assocation
  has_many :employees, class_name: "User", foreign_key: "manager_id"

  belongs_to :manager, class_name: "User", optional: true


  # # polymorphic
  # # https://guides.rubyonrails.org/association_basics.html#polymorphic-associations
  # has_many :tasks, as: :taskable

end
