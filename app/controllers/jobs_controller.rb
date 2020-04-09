class JobsController < ApplicationController

  def index 
    # byebug
    user = User.find(params[:id])
    jobs = user.jobs 
    render json: jobs
  end

end
