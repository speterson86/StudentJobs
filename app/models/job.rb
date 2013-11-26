class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :duties, presence: true
  validates :hourly_pay, numericality: true
  validates :company_name, presence: true
  validates :skills, presence: true
  validates :desc, presence: true
  validates :hours_per_week, numericality: true
  validates :shift, presence: true
  validates :contact_info, presence: true
  validates :company_email, presence: true
  validates_format_of :email, :with => /@/# a simple way to marginally validate an email address.
  /@/ is a regular expression which matches @
end
