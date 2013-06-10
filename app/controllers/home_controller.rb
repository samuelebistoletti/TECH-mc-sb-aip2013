class HomeController < ApplicationController
  def index
    @breadcrumb = "<span class='current_crumb'>Home </span>"
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
end
