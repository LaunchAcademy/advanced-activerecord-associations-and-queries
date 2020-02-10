class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :assignments
  has_many :projects, through: :assignments
  has_many :tasks

  # custom association
  has_many :managed_projects, class_name: "Project", foreign_key: "manager_id"

  # self-join
  has_many :employees, class_name: "User", foreign_key: "manager_id"
  belongs_to :manager, class_name: "User", optional: true

  # scope
  scope :nicks, -> { where(first_name: "Nick")}

  # --- polymorphic
  #   has_many :tasks, as: :taskable

  def full_name
    "#{first_name} #{last_name}"
  end
end
