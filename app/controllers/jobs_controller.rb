class JobsController < ApplicationController
  
  def index
    @job = Job.all
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(params[:job].permit(:title, :text))
    
    if @post.save
    redirect_to @job
    else
      render 'new'
    end
  end
  
  def show
    @job = Job.find(params[:id])
  end
  
  def edit
    @job = Job.find(params[:id])
  end
  
  def update
    @job =Job.find(params[:id])
    
    if @job.update(params[:job].permit(:title, :text))
      redirect_to @job
    else
      render 'edit'
    end
  end
  
  def destroy
  @job = Post.find(params[:id])
  @job.destroy
 
  redirect_to jobs_path
end
  
  private
    def job_params
      params.require(:job).permit(:title, :text)
  end
  
end
