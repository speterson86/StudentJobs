 class JobsController < ApplicationController
  
  def index
    @jobs = Job.all#fetch all jobs from controllers/jobs.rb
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    
    if @job.save
      redirect_to @job
      flash[:notice] = "Job created; approval pending"
    else
      render 'new'
      flash[:notice] = "Job not created"
    end
  end
  
  def show
    @job = Job.find(params[:id])
  end
  
  private
  def job_params
    params.require(:post).permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :company_website, :email)
  end

end