class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render :index
  end

  def show
    @question = Question.find_by(id: params[:id])

    render :show
  end

  def new; end

  def create
    # Question.create(question_attributes)
    question = Question.new(question_attributes)
    question.save
    redirect_to questions_path
  end

  private

  def question_attributes
    params.require(:question).permit(:title, :description)
  end
end
