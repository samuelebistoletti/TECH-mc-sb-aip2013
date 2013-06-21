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
    @title = "Gestione Designers"
    @designers = Designer.all

    respond_to do |format|
      format.html # designers.html.erb
      format.json { render json: @products }
    end
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
    @title = "Gestione Contatti"
    @contacts = Contact.all

    respond_to do |format|
      format.html # contacts.html.erb
      format.json { render json: @products }
    end
  end
end
