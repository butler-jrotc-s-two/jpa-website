class QuestionsController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
    @categories = Category.all
  end
  
  def create
    @question = Question.new(params.require(:question).permit(:category_id, :question, :answer, :false_answers))
    if @question.save
      redirect_to questions_path
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    
  end
  
  def destroy
      
  end
  
  def set_user
    @user = User.find(params[:id])
  end
end
