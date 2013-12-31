class SubmissionsController < ApplicationController
  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(app_params)
    if @submission.save
      redirect_to submissions_path
    end
  end

  def index
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find(params[:id])
  end

  private
  def app_params
    params.require(:submission).permit(:source_code, :test_code)
  end

end