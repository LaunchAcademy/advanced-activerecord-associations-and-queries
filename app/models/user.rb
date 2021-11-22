class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :assignments
  has_many :projects, through: :assignments
  has_many :tasks


  # # 1.) Multiple Associations between tables
  # # User(manager) / Projects relationship: custom association
  
  # # what if a user can be both working on the project (assigned) and managing it

  has_many :managed_projects, class_name: "Project", foreign_key: "manager_id"



  # # 2.) Self-Join
  # # User (manager) / Users (employees) relationship
  has_many :employees, class_name: "User", foreign_key: "manager_id"
  # # ^^ Look at `manager_id` on Users table
  belongs_to :manager, class_name: "User", optional: true


  # # 3.) Polymorphic
  # # # https://guides.rubyonrails.org/association_basics.html#polymorphic-associations
  # has_many :tasks, as: :taskable

  def full_name
    "#{first_name} #{last_name}"
  end

end