class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit]  
  
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params.require(:category).permit(:name))
    if @category.save
      redirect_to categories_path
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
end
