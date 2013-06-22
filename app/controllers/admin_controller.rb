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
    @title = "Gestione Eventi"
    @events = Event.all

    respond_to do |format|
      format.html # events.html.erb
      format.json { render json: @products }
    end
  end

  def partners
    @title = "Gestione Partners"
    @partners = Partner.all

    respond_to do |format|
      format.html # partners.html.erb
      format.json { render json: @partners }
    end
  end

  def resellers
    @title = "Gestione Rivenditori"
    @resellers = Reseller.all

    respond_to do |format|
      format.html # resellers.html.erb
      format.json { render json: @resellers }
    end
  end

  def services
    @title = "Gestione Servizi"
    @services = Service.all

    respond_to do |format|
      format.html # services.html.erb
      format.json { render json: @services }
    end
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