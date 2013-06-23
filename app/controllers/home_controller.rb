class HomeController < ApplicationController

  def index
    @title = 'Home'
    @breadcrumb = '<span class="current_crumb">Home </span>'
    @products = Product.limit(10)
  end
end
