 class JobsController < ApplicationController
   before_filter :authenticate_user, except: [:index, :new, :show]#use only on controller that we want to protect.
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
      
   #else if admin is logged in, all jobs:
  def show
    @job = Job.find(params[:id])
  end
   
  def edit
    @job = Job.find(params[:id])
  end
  
  def update
  @job = Job.find(params[:id])
 
    if @job.update_attributes(params[:post].permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :company_website, :email))
      redirect_to @job
    else
      render 'edit'
    end
  end
  
  private
  def job_params
    params.require(:post).permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :company_website, :email)
  end

end