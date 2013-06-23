class PartnersController < ApplicationController
  def index
    @title = 'I nostri partners'
    @breadcrumb = '<span class="current_crumb">Partners </span>'
    @partners = Partner.all
    @first = Partner.first()
  end

  def show
    @partner = Partner.find(params[:id])
    @title = @partner.name
    @breadcrumb = '<a href="' + partners_path + '">Partners</a><span class="current_crumb">' + @partner.name + '</span>'
    @next = Partner.first(:conditions => ['id > ?', params[:id]])
    @previous = Partner.last(:conditions => ['id < ?', params[:id]])
  end

  def new
    @partner = Partner.new
    @title = "Nuovo Partner"
  end

  def edit
    @partner = Partner.find(params[:id])
    @title = "Modifica Partner"
  end

  def create
    #Carica l'immagine selezionata sul server
    if(params[:partner][:image_url])
      image_io = params[:partner][:image_url]
      File.open(Rails.root.join('app','assets','images','partners', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:partner][:image_url] = image_io.original_filename
    #Se non è stata selezionata un'immagine viene caricata un'immagine di default
    else
      params[:partner][:image_url] = 'missing.png'
    end

    @partner = Partner.new(params[:partner])
    respond_to do |format|
      if @partner.save
        format.html { redirect_to admin_partners_path, notice: 'Partner inserito con successo.' }
        format.json { render json: @partner, status: :created, location: @partner }
      else
        format.html { render action: "new" }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @partner = Partner.find(params[:id])

    #Se è stata selezionata una nuova immagine la carica sul server
    if(params[:partner][:image_url])
      image_io = params[:partner][:image_url]
      File.open(Rails.root.join('app','assets','images','partners', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:partner][:image_url] = image_io.original_filename
    end

    respond_to do |format|
      if @partner.update_attributes(params[:partner])
        format.html { redirect_to admin_partners_path, notice: 'Partner modificato con successo.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @partner = Partner.find(params[:id])
    @partner.destroy

    respond_to do |format|
      format.html { redirect_to admin_partners_path }
      format.json { head :no_content }
    end
  end
end
