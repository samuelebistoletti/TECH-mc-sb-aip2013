class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @title = 'Categorie di prodotto'
  end

  def show
    @category = Category.find(params[:id]);
    @title = @category.name
    @breadcrumb = '<a href="">Prodotti</a><span class="current_crumb">' + @category.name + '</span>'
    @products = @category.products
  end
end