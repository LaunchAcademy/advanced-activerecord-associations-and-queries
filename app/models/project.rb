class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :assignments
  has_many :users, through: :assignments
  has_many :tasks


  # # 1.) Multiple Associations between tables
  # # User(manager) / Projects relationship: custom association
  belongs_to :manager, class_name: "User", optional: true


  # # 3.) Polymorphic
  # has_many :tasks, as: :taskable

end
