 class JobsController < ApplicationController
   before_filter :authenticate_user, except: [:index, :new, :show]#use only on controller that we want to protect.
   def index #method for index.html.erb
    @jobs = Job.all#fetch all jobs from controllers/jobs.rb
    #@jobs = Job.where :approve => true#fetch jobs that the admin approved from controllers/jobs.rb
  end
  
   def new #method for new.html.erb
    @job = Job.new
  end
  
   def create #event handler that handles the data that the user put in new.html.erb after he/she hits the submit button
     @job = Job.new(job_params)#job_params = get all data filled into new.html.erb form
    
    if @job.save
      redirect_to @job
      flash[:notice] = "Job created; approval pending"
    else
      render 'new'  # Redisplay the new.html.erb file with the user's data and the error messages
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
    params.require(:job).permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :company_website, :email)
  end

end