class QuizzesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  end

  def new
  end
end
