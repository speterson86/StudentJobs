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
  
  private
    def job_params
      params.require(:job).permit(:title, :text)
  end

end