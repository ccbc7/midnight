class Plan < ApplicationRecord
  validates :title, presence: true
  validates :StartDay, presence: true
  validates :EndDay, presence: true

end
