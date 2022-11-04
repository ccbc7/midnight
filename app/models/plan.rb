class Plan < ApplicationRecord
  validate :start_end_check
  def start_end_check
    unless
      self.StartDay && self.EndDay &&
      self.StartDay < self.EndDay
      errors.add(:EndDay, "は開始日より前の日付は登録できません。")
    end
  end
  validates :title, presence: true
  validates :StartDay, presence: true
  validates :EndDay, presence: true
end
