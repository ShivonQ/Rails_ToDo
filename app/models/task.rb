
class Task < ActiveRecord::Base

  # belongs_to :user

  validates_presence_of :title
  validate :future_completed_date
  # validates_presence_of :user

  private

  def future_completed_date
    if !completed.blank? && completed > Date.today
      self.errors.add(:completed, "Task completion can't be in the future. That's just not how time works")
    end
  end
end