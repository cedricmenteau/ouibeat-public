class JobsController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  before_action :set_job, only: [:edit, :update, :destroy]

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to admin_path(anchor: "jobs")
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to admin_path(anchor: "jobs")
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to admin_path(anchor: "jobs")
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:name, :picture)
  end

end
