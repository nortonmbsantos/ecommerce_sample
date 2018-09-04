class Admin::CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]



def index
	@categories = Admin::Category.all
end

def new
	@category = Admin::Category.new
end

def create
	@category = Admin::Category.new(category_params) 
	if @category.save 
		redirect_to(admin_categories_path, :flash => :success)
	else
		flash!(:error)
		render :new
	end
end

def destroy
  @category.destroy
  redirect_to categories_path
end

private 

def set_category
  @category = Admin::Category.find(params[:id])
end

def category_params
  params.require(:admin_category).permit(:name)
end
end
