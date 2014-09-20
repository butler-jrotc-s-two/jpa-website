class QuestionFormatsController < ApplicationController
  before_action :set_question_format, only: [:show, :edit]  
  
  def index
    @question_formats = QuestionFormat.all
  end

  def show
  end

  def new
    @question_format = QuestionFormat.new
  end
  
  def create
    @question_format = QuestionFormat.new(params.require(:question_format).permit(:name))
    if @question_format.save
      redirect_to question_formats_path
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
  
  def set_question_format
    @question_format = QuestionFormats.find(params[:id])
  end
end
