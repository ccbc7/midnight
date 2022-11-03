class Plan < ApplicationRecord
  validate :start_end_check
  def start_end_check
    errors.add(:EndDay, "は開始日より前の日付は登録できません。")
    if
    self.StartDay ==! nil && self.EndDay ==! nil && self.StartDay > self.EndDay
    end
  end
  validates :title, presence: true
  validates :StartDay, presence: true
  validates :EndDay, presence: true
end
