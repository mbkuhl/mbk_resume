class ResumeController < ApplicationController

  def show
    if params[:section]  == "education"
      @education = true
    end
  end

end