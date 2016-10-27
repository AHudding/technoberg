class WelcomeController < ApplicationController

  def index
    @jobs = Job.order("created_at DESC").all
    @educations = Education.all;
  end

end
