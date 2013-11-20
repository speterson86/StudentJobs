class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :duties, presence: true
  validates :hourly_pay, presence: true
  validates :company_name, presence: true
  validates :skills, presence: true
  validates :desc, presence: true
  validates :hours_per_week, presence: true
  validates :shift, presence: true
  validates :contact_info, presence: true
end
