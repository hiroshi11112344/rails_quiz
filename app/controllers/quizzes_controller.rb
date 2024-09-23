class QuizzesController < ApplicationController
  def new
    @quiz = Quiz.new
  end 

  def create
    @quiz = Quiz.new(
      question: params[:question], 
      answer_1: params[:answer_1],
      answer_2: params[:answer_2],
      
    )
    @answer = Answer.new(
      correct_answer: params[:correct_answer]
    )
    @answer.save
    @quiz.save
    redirect_to("/quizzes/index")
  
  end

  def index
    @quiz = Quiz.all
  end 

  def show
    @quiz = Quiz.find_by(id: params[:id])
  end
end
