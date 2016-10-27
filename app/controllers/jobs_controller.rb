class JobsController < ApplicationController

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(name: "Technoberg", position: "Jr. webdeveloper", location: "Purmerend", dates: "November 2016 - toekomst", description: "Een geweldige baan")

    respond_to do |format|
      if @job.save
        format.html { redirect_to root_path, notice: 'De functie is toegevoegd. Vergeet niet te bellen of mailen om het goede nieuws te bevestigen!' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render root_path, notice: 'Er is iets mis gegaan' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:name, :position, :dates, :location, :description)
    end
end
