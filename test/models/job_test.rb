require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "Create a job" do
    #job = Job.new
    #job.title = "abc"
    #job.duties = "abc"
    #job.hourly_pay = ""
    #job.company_name = ""
    #job.skills = ""
    #job.desc = ""
    #job.hours_per_week = ""
    #job.shift = ""
   # job.contact_info = ""
    
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => "2.99", :company_name => "abc", :skills => "abc", :desc => "abc", :hours_per_week => "1", :shift => "abc", :contact_info => "abc"
    
    assert_not_nil job.id
    
    found_job = Job.find(job.id)
  end
  
  test "requires all fields" do
    job = Job.create :title => "", :duties => "", :hourly_pay => nil, :company_name => "", :skills => "", :desc => "", :hours_per_week => nil, :shift => "", :contact_info => ""
    
    assert_nil job.id
  end
  
  test "requires numeric hourly pay" do
    job = Job.create :hourly_pay => "qq"
    
    assert_nil job.id
  end
    
end
