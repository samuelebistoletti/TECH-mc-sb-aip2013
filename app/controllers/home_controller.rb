class HomeController < ApplicationController

  def index
    @title = 'Home'
    @breadcrumb = '<span class="current_crumb">Home </span>'
    @products = Product.limit(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
end
