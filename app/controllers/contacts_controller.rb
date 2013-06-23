class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @title = 'Contatti'
    @breadcrumb = '<span class="current_crumb">Contatti</span>'
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
    @title = 'Contatti'
    @breadcrumb = '<span class="current_crumb">Contatti</span>'
  end

  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        #Redirect alla pagina di corretto invio del messaggio
        format.html { redirect_to :controller => "contacts", :action => "confirm", :id => @contact }
        format.json { render json: @contact }
      else
        format.html { render action: "new" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  #Pagina di conferma di invio del messaggio
  def confirm
    @contact = Contact.find(params[:id])
    @title = 'Conferma'
    @breadcrumb = '<a href=' + new_contact_path + '>Contatti</a><span class="current_crumb">Conferma Contatto</span>'
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to admin_contacts_path }
      format.json { head :no_content }
    end
  end
end