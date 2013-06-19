class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id]);
    @title = @category.name
    @breadcrumb = '<a href="">Prodotti</a><span class="current_crumb">' + @category.name + '</span>'
    @products = Product.where(:category => params[:id])
  end
end