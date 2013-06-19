class CategoriesController < ApplicationController
  def index

  end

  def show
    @products = Product.where(:category => params[:category])
  end
end