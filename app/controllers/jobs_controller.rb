class JobsController < ApplicationController
  
  def index
    @jobs = Job.all
  end
  
  def new
    @jobs = Job.new
  end
  
  def create
    @jobs = Job.new(params[:job].permit(:title, :text))
    
    if @jobs.save
    redirect_to @jobs
    else
      render 'new'
    end
  end
  
  def show
    @jobs = Job.find(params[:id])
  end
  
  def edit
    @jobs = Job.find(params[:id])
  end
  
  def update
    @jobs =Job.find(params[:id])
    
    if @jobs.update(params[:job].permit(:title, :text))
      redirect_to @jobs
    else
      render 'edit'
    end
  end
  
  def destroy
  @jobs = Job.find(params[:id])
  @jobs.destroy
 
  redirect_to jobs_path
end
  
  private
    def job_params
      params.require(:job).permit(:title, :text)
  end
  
    @jobs = Job.new(job_params)
    @jobs.save
    redirect_to @jobs
  end
  
  def show
    #the @job instance var is passed to the view
    @jobs = Job.find(params[:id])
  end
  
  private 
    def job_params
      params.require(:post).permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :contact_info)
    end
end
