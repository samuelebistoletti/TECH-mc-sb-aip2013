class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
    @title = 'Contatti'
    @breadcrumb = '<span class="current_crumb">Contatti</span>'

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.json
  def new
    @contact = Contact.new
    @title = 'Contatti'
    @breadcrumb = '<span class="current_crumb">Contatti</span>'

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        format.html { redirect_to :controller => "contacts", :action => "confirm", :id => @contact }
        format.json { render json: @contact }
      else
        format.html { render action: "new" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def confirm
    @contact = Contact.find(params[:id])
    @title = 'Conferma'
    @breadcrumb = '<a href=' + new_contact_path + '>Contatti</a><span class="current_crumb">Conferma Contatto</span>'

    respond_to do |format|
      format.html # confirm.html.erb
      format.json { render json: @contact }
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to admin_contacts_path }
      format.json { head :no_content }
    end
  end
end
