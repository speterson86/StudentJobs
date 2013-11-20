class JobsController < ApplicationController
  
  def index
    @jobs = Job.all
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    
    if @job.save
      redirect_to @job
    else
      render 'new'
    end
  end
  
  def show
    @job = Job.find(params[:id])
  end
  
  private
  def job_params
    params.require(:post).permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :contact_info)
  end

end