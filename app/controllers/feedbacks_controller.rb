class FeedbacksController < ApplicationController
  before_action :authenticate_user!

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = current_user.feedbacks.new(feedback_params)

    if @feedback.save
      FeedbacksMailer.send_feedback(@feedback).deliver_now

      redirect_to new_feedback_path, notice: t('.sended')
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:message)
  end
end
