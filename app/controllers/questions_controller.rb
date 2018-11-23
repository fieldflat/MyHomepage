class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by(id: params[:id])
  end

  def check
    @question = Question.find_by(id: params[:id])

    if (@question.answer == params[:inputAnswer])
      redirect_to("/questions/#{@question.id}/flag")
    else
      flash[:notice] = "Incorrect answer..."
      redirect_to("/questions/#{@question.id}/show")
    end
  end

  def flag
    @question = Question.find_by(id: params[:id])
  end

end
