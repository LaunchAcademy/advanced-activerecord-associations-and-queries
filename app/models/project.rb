class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :assignments
  has_many :users, through: :assignments
  has_many :tasks

  # self-join
  belongs_to :manager, class_name: "User", optional: true

  #  scopes
  scope :important, -> { where(urgent: true) }

  # advanced scope with join and merge
  scope :nick_projects, -> { joins(:user).merge(User.nicks) }

  # --- polymorphic
  #   has_many :tasks, as: :taskable

end
