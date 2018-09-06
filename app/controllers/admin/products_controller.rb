class Admin::ProductsController < ApplicationController 
  layout 'dashboard_layout'
	before_action :set_product, only: [:show, :edit, :update, :destroy]
	
def index
	@products = Admin::Product.all
end

def new
	@categories = Admin::Category.all
	@product = Admin::Product.new
end

def create
	@categories = Admin::Category.all
	@product = Admin::Product.new(product_params) 
	if @product.save
		redirect_to(admin_products_path, :flash => :success)
	else
		flash!(:error)
		render :new
	end
end

def destroy
  @product.destroy
  redirect_to(admin_products_path, :flash => :success)
end

private 
def set_product
  @product = Admin::Product.find(params[:id])
end

def product_params
  params.require(:admin_product).permit(:name, :quantity, :price, :admin_category_id)
end
end
