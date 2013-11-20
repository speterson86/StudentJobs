class JobsController < ApplicationController
  
  def index
    @jobs = Job.all
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(params[:post].permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :contact_info))
    
    if @job.save
    redirect_to @job
    end
  end
  
  def show
    @job = Job.find(params[:id])
  end

end