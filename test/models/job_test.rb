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

    #job.company_website = ""
    
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => "2.99",
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => "1", :shift => "abc",
                     :company_website => "http://abc.com", :email => "abc@abc.com"
    

    assert_not_nil job.id

  end
  
  test "requires all fields" do
    job = Job.create :title => "", :duties => "", :hourly_pay => nil,
                     :company_name => "", :skills => "", :desc => "",
                     :hours_per_week => nil, :shift => "", :company_website => "",
                     :email => ""
    
    assert_nil job.id
  end
  
  test "requires numeric hourly pay" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => "qq",
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => "1", :shift => "abc",
                     :company_website => "http://abc.com", :email => "abc@abc.com"
    
    assert_nil job.id
  end
  
  test "requires numeric hours per week" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => "qq",
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => "qq", :shift => "abc",
                     :company_website => "http://abc.com", :email => "abc@abc.com"
    
    assert_nil job.id
  end
  
  test "requires formatted url" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => "2.99",
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => "1", :shift => "abc",
                     :company_website => "qq", :email => "abc@abc.com"
    
    assert_nil job.id
  end

  test "allows https url" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => "2.99",
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => "1", :shift => "abc",
                     :company_website => "https://abc.com", :email => "abc@abc.com"
    
    assert_not_nil job.id
  end
  
  test "requirres valid email" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => "2.99",
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => "1", :shift => "abc",
                     :company_website => "https://abc.com", :email => "abcabc.com"
    
    assert_nil job.id
  end
    
end
