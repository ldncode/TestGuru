class QuestionsController < ApplicationController

   before_action :authenticate_user!
   before_action :find_test, only: %i[index]
   rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = @test.questions.all
  end


  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end

end
