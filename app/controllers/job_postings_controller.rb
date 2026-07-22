class JobPostingsController < ApplicationController
  def new
    @job_posting = JobPosting.new
  end

  def create
    @job_posting = JobPosting.new(job_posting_params)

    if @job_posting.save
      redirect_to @job_posting
    else
      render :new
    end
  end

  def show
    @job_posting = JobPosting.find(params[:id])
  end

  private

  def job_posting_params
    params.require(:job_posting).permit(
      :company_name,
      :title,
      :requirements,
      :description,
      :salary,
      :location
    )
  end
end
