class JobsController < ApplicationController
  def index
  end
  
  def new
  end
  
  def create
    #render text: params[:post].inspect
    @job = Job.new(post_params)
    @job.save
    redirect_to @job
  end
  
  private 
    def post_params
      params.require(:post).permit(:title, :duties, :hourly_pay, :company_name, :skills, :desc, :hours_per_week, :shift, :contact_info)
    end

end
