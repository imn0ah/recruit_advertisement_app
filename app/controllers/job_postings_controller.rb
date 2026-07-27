class JobPostingsController < ApplicationController
  def new
    @job_posting = JobPosting.new
  end

  def create
    @job_posting = JobPosting.new(job_posting_params)

    @job_posting.ai_generated_text = ChatGptService.generate(@job_posting)

    render :new
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
