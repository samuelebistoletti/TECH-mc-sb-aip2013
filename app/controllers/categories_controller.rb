class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @title = 'Categorie di prodotto'
    @breadcrumb = ''
  end
end