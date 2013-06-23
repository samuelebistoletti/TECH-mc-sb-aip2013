class AdminController < ApplicationController
  def index
    @title = "Area Riservata";
  end

  def products
    @title = "Gestione Prodotti"
    @products = Product.all
  end

  def designers
    @title = "Gestione Designers"
    @designers = Designer.all
  end

  def events
    @title = "Gestione Eventi"
    @events = Event.all
  end

  def partners
    @title = "Gestione Partners"
    @partners = Partner.all
  end

  def resellers
    @title = "Gestione Rivenditori"
    @resellers = Reseller.all
  end

  def services
    @title = "Gestione Servizi"
    @services = Service.all
  end

  def contacts
    @title = "Gestione Contatti"
    @contacts = Contact.all
  end
end