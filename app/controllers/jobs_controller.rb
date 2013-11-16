class JobsController < ApplicationController
  def index
  end
  
  def new
  end
  
  def create
    @job = Job.new(job_params)
    @job.save
    redirect_to @job
  end
  
  def show
    #the @job instance var is passed to the view
    @job = Job.find(params[:id])
  end
  
  private 
    def job_params
      params.require(:post).permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :contact_info)
    end

end
