class UsersController < ApplicationController

  def index 
    users = User.all 
    render json: users
  end


  def show 
    # /users/3/jobs /users/3/toDos /users/3/companies
    #users/3 {jobs: [], toDos: [], companies: []}
  end

end
