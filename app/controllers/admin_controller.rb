class AdminController < ApplicationController
  def index
    @title = "Area Riservata";
  end

  def products
    @title = "Gestione Prodotti"
    @products = Product.all

    respond_to do |format|
      format.html # products.html.erb
      format.json { render json: @products }
    end
  end

  def designers
  end

  def events
  end

  def partners
  end

  def resellers
  end

  def services
  end

  def contacts
  end
end
