class JobsController < ApplicationController
  
  def index
    @jobs = Job.all
  end
  
  def new
    @jobs = Job.new
  end
  
  def create
    @jobs = Job.new(job_params)
    
    if @jobs.save
    redirect_to @jobs
    end
  end
  
  def show
    @jobs = Job.find(params[:id])
  end
  
  private
    def job_params
      params.require(:post).permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :contact_info)
  end

end