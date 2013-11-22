class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :duties, presence: true
  validates :hourly_pay, numericality: true
  validates :company_name, presence: true
  validates :skills, presence: true
  validates :desc, presence: true
  validates :hours_per_week, numericality: true
  validates :shift, presence: true
  validates :company_website, presence: true
end
