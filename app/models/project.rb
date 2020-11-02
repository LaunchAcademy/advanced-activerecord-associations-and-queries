class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :assignments
  has_many :users, through: :assignments
  # has_many :tasks

  belongs_to :manager, class_name: "User", optional: true

  # --- polymorphic
  # has_many :tasks, as: :taskable

end
