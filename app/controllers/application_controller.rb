class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :category_options, :question_format_options
  
  def category_options
    category_options = [['question category', 0]]
    category_options += Category.all.map{|c| [c.name, c.id]}
  end
  
  def question_format_options
    category_options = [['question format', 0]]
    category_options += QuestionFormat.all.map{|f| [f.name, f.id]}
  end
end
