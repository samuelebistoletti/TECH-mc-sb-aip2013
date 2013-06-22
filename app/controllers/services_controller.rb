class ServicesController < ApplicationController
  # GET /services
  # GET /services.json
  def index
    @title = 'I nostri servizi'
    @breadcrumb = '<span class="current_crumb">Servizi</span>'
    @generalServices = Service.find_all_by_service_type(0)
    @specificServices = Service.find_all_by_service_type(1)
    @first = Service.first()

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @services }
    end
  end

  # GET /services/1
  # GET /services/1.json
  def show
    @service = Service.find(params[:id])
    @title = @service.name
    @breadcrumb = '<a href=' + services_path + '>Servizi</a><span class="current_crumb">' + @service.name + '</span>'
    @next = Service.first(:conditions => ['id > ?', params[:id]])
    @previous = Service.last(:conditions => ['id < ?', params[:id]])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service }
    end
  end

  # GET /services/new
  # GET /services/new.json
  def new
    @service = Service.new
    @title = "Nuovo Servizio"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service }
    end
  end

  # GET /services/1/edit
  def edit
    @service = Service.find(params[:id])
    @title = "Modifica Servizio"
  end

  # POST /services
  # POST /services.json
  def create
    if(params[:service][:image_url])
      image_io = params[:service][:image_url]
      File.open(Rails.root.join('app','assets','images','services', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:service][:image_url] = image_io.original_filename
    else
      params[:service][:image_url] = 'missing.png'
    end

    @service = Service.new(params[:service])
    respond_to do |format|
      if @service.save
        format.html { redirect_to admin_services_path, notice: 'Servizio creato con successo.' }
        format.json { render json: @service, status: :created, location: @service}
      else
        format.html { render action: "new" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /services/1
  # PUT /services/1.json
  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(params[:service])
        format.html { redirect_to admin_services_path, notice: 'Servizio cancellato con successo.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to admin_services_path }
      format.json { head :no_content }
    end
  end
end
