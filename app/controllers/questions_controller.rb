class QuestionsController < ApplicationController
   before_action :find_question, only: %i[show destroy]
   before_action :find_test, only: %i[index new create]
   rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = @test.questions.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = @test.questions.new
  end

  def create
    question = @test.questions.new(question_params)
    if question.save
      render plain: question.inspect
    else
      render plain: 'Save error!'
    end
  end

  def destroy
    @question.destroy
    render plain: 'Question delete!'
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def find_test
    @test = Test.find(params[:test_id])
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end


  def question_params
    params.require(:question).permit(:body)
  end

end
