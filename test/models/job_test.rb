require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "Create a job" do  
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => 2.99,
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => 1, :shift => "abc",
                     :company_website => "http://abc.com", :email => "abc@abc.com",
                     :reject => true, :approve => true
    

    assert_not_nil job.id

  end
  
  test "requires all fields" do
    job = Job.create :title => "", :duties => "", :hourly_pay => nil,
                     :company_name => "", :skills => "", :desc => "",
                     :hours_per_week => nil, :shift => "", :company_website => "",
                     :email => "",
                     :reject => nil, :approve => nil
    
    assert_nil job.id
  end
  
  test "requires numeric hourly pay" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => "qq",
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => 1, :shift => "abc",
                     :company_website => "http://abc.com", :email => "abc@abc.com",
                     :reject => true, :approve => true
    
    assert_nil job.id
  end
  
  test "requires numeric hours per week" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => 2.99,
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => "qq", :shift => "abc",
                     :company_website => "http://abc.com", :email => "abc@abc.com",
                     :reject => true, :approve => true
    
    assert_nil job.id
  end
  
  test "requires formatted url" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => 2.99,
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => 1, :shift => "abc",
                     :company_website => "qq", :email => "abc@abc.com",
                     :reject => true, :approve => true
    
    assert_nil job.id
  end

  test "allows https url" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => "2.99",
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => 1, :shift => "abc",
                     :company_website => "https://abc.com", :email => "abc@abc.com",
                     :reject => true, :approve => true
    
    assert_not_nil job.id
  end
  
  test "requires valid email" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => 2.99,
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => 1, :shift => "abc",
                     :company_website => "https://abc.com", :email => "abcabc.com",
                     :reject => true, :approve => true
    
    assert_nil job.id
  end
  
  test "update fields" do
    job = Job.create :title => "abc", :duties => "abc", :hourly_pay => 2.99,
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => 1, :shift => "abc",
                     :company_website => "http://abc.com", :email => "abc@abc.com",
                     :reject => false, :approve => false
    
    assert job.update(:title => "abc", :duties => "abc", :hourly_pay => 2.99,
                     :company_name => "abc", :skills => "abc", :desc => "abc",
                     :hours_per_week => 1, :shift => "abc",
                     :company_website => "http://abc.com", :email => "abc@abc.com",
                     :reject => true, :approve => true)
  end
    
end
