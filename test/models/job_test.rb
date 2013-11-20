require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "Create a job" do
    #job = Job.new
    #job.title = ""
    #job.duties = ""
    #job.title = ""
    #job.title = ""
    #job.title = ""
    #job.title = ""
    #job.title = ""
    #job.title = ""
   # job.title = ""
    
    job - Job.create :title => "", :duties => ""
    
    assert_not_nil job.id
    
    found_job = Job.find(job.id)
  end
  
  test "requires all fields" do
    job = Job.create :title => ""
    
    assert_nil job.id
  end
  
  test "requires numeric hourly pay" do
    job = Job.create :title => "", :hourly_pay => "qq"
  end
    
end
