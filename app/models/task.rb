class Task < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :project, required: true
  belongs_to :user

  # --- polymorphic
  belongs_to :taskable, polymorphic: true
end
