class FeedbacksController < ApplicationController
  # GET /feedbacks/new
  def new
    # @feedback = Feedback.new
  end

  # POST /feedbacks
  def create
    # @feedback = Feedback.new(feedback_params)

    # if @feedback.valid?
    #   Notifications.feedback(@feedback.from, @feedback.comment).deliver
    #   redirect_to root_path, notice: 'Feedback was successfully created.'
    # else
    #   render action: 'new'
    # end

    from = feedback_params[:from]
    comment = feedback_params[:comment]

    if from.present? && comment.present?
      Notifications.feedback(from, comment).deliver
      redirect_to root_path, notice: 'Feedback was successfully created.'
    else
      flash.now.alert = 'From and comment must be present.'
      render action: 'new'
    end
  end

  private
    def feedback_params
      params.require(:feedback).permit(:from, :comment)
    end
end
