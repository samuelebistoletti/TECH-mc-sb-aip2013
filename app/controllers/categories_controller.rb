class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @title = 'Categorie di prodotto'
    @breadcrumb = ''
  end

  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @breadcrumb = '<a href=' + categories_path + '>Prodotti</a><span class="current_crumb">' + @category.name + '</span>'
    @products = @category.products
    @gd_text = 'Esplora i prodotti di questa categoria';
    @gd_link = category_path(@category) + '/' + @products.first().id.to_s
    render :template => 'shared/products'
  end
end