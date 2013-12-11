#the call "Job.all" will fetch all records, categorized under the attributes, provided by this "job.rb" file.
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
  validates :company_website, url: true
  validates_format_of :email, :with => /@/# a simple way to marginally validate an email address.
  
  before_update :flip_flags
 
  private
  def flip_flags
    if self.approve?
      self.reject = false
    else
      self.reject = true
    end
    true
  end
  
end
