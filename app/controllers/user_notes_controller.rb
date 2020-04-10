class UserNotesController < ApplicationController

  def index 
    notes = UserNote.all 
    render json: notes
  end

end
