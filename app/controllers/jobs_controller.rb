 class JobsController < ApplicationController
   before_filter :authenticate_user, except: [:index, :new, :show]#use only on controller that we want to protect.
  def index
    @jobs = Job.all#fetch all jobs from controllers/jobs.rb
    #@jobs = Job.where :approve => true#fetch jobs that the admin approved from controllers/jobs.rb
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
  
   #if admin is not logged in, only show approved jobs
  #def edit
   # @post = Post.find(params[:id])
  #end
   
      
   #else if admin is logged in, all jobs:
  def show
    @job = Job.find(params[:id])
  end
  
  private
  def job_params
    params.require(:post).permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :company_website, :email)
  end

end