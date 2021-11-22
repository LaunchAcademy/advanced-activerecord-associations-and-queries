class Task < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :project
  belongs_to :user, optional: true

  # --- polymorphic
  # belongs_to :taskable, polymorphic: true
end
