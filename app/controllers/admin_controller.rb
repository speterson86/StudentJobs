class AdminController < ApplicationController
  before_filter :authenticate_user #use only on controller that we want to protect.
  
  def index
    @jobs = Job.all
  end

end
