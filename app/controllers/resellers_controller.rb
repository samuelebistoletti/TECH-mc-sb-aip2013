class ResellersController < ApplicationController
  def search
    @title = 'Ricerca Rivenditori'
    @breadcrumb = '<span class="current_crumb">Cerca rivenditori</span>'
    @reseller = Reseller.all
  end

  def index
    @query = params[:query]
    @resellers = Reseller.where("region LIKE ? OR province LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    @first = Reseller.first
    @breadcrumb = "<a href=\"#{resellers_search_path}\">Cerca rivenditori</a><span class=\"current_crumb\">Risultati della ricerca</span>"
    @title = 'Risultati della ricerca'

    respond_to do |format|
      if @resellers.size > 0
        @title = "Sono stati trovati #{@resellers.size} rivenditori"
        format.html # index.html.erb
        format.json { render json: @resellers }
      else
        @title = "Nessun rivenditore trovato"
        format.html # index.html.erb
        format.json { render json: @resellers }
      end
    end
  end

  def show
    @query = params[:query]
    @reseller = Reseller.find(params[:id])
    @resellers = Reseller.where("region LIKE ? OR province LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    @next = @resellers.first(:conditions => ['id > ?', params[:id]])
    @previous = @resellers.last(:conditions => ['id < ?', params[:id]])
    @partners = Partner.where(:id => @reseller.products.select(:partner_id))
    @title = @reseller.name
    @breadcrumb = "<a href=\"#{resellers_search_path}\">Cerca rivenditori</a><a href=\"/resellers/?query=#{@query}\">Risultati della ricerca</a><span class=\"current_crumb\">#{@title}</span>"
  end

  def new
    @reseller = Reseller.new
    @title = "Nuovo Rivenditore"
  end

  def edit
    @reseller = Reseller.find(params[:id])
    @title = "Modifica Rivenditore"
  end

  def create
    if(params[:reseller][:image_url])
      image_io = params[:reseller][:image_url]
      File.open(Rails.root.join('app','assets','images','resellers', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:reseller][:image_url] = image_io.original_filename
    else
      params[:reseller][:image_url] = 'missing.png'
    end

    @reseller = Reseller.new(params[:reseller])
    respond_to do |format|
      if @reseller.save
        format.html { redirect_to admin_resellers_path, notice: 'Rivenditore creato con successo.' }
        format.json { render json: @reseller, status: :created, location: @reseller}
      else
        format.html { render action: "new" }
        format.json { render json: @reseller.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @reseller = Reseller.find(params[:id])

    if(params[:reseller][:image_url])
      image_io = params[:reseller][:image_url]
      File.open(Rails.root.join('app','assets','images','resellers', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:reseller][:image_url] = image_io.original_filename
    end

    respond_to do |format|
      if @reseller.update_attributes(params[:reseller])
        format.html { redirect_to admin_resellers_path, notice: 'Rivenditore modificato con successo.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reseller.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reseller = Reseller.find(params[:id])
    @reseller.destroy

    respond_to do |format|
      format.html { redirect_to admin_resellers_path }
      format.json { head :no_content }
    end
  end
end
