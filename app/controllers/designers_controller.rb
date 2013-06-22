class DesignersController < ApplicationController
  # GET /designers
  # GET /designers.json
  def index
    @title = 'I nostri designers'
    @breadcrumb = '<span class="current_crumb">Designers </span>'
    @designers = Designer.all
    @first = Designer.first()

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @designers }
    end
  end

  # GET /designers/1
  # GET /designers/1.json
  def show
    @designer = Designer.find(params[:id])
    @title = @designer.name
    @breadcrumb = '<a href="' + designers_path + '">Designers</a><span class="current_crumb">' + @designer.name + '</span>'
    @next = Designer.first(:conditions => ['id > ?', params[:id]])
    @previous = Designer.last(:conditions => ['id < ?', params[:id]])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @designer }
    end
  end

  def products
    @designer = Designer.find(params[:id])
    @title = 'Prodotti progettati da ' + @designer.name
    @products = Product.find_all_by_designer_id(params[:id])
    @back = designer_path(@designer)
    @link = designer_path(@designer) + '/products/'
    render :template => 'shared/products'
  end

  # GET /designers/new
  # GET /designers/new.json
  def new
    @designer = Designer.new
    @title = "Nuovo Designer"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @designer }
    end
  end

  # GET /designers/1/edit
  def edit
    @designer = Designer.find(params[:id])
    @title = "Modifica Designer"
  end

  # POST /designers
  # POST /designers.json
  def create
    image_io = params[:designer][:image_url]
    File.open(Rails.root.join('app','assets','images','designers', image_io.original_filename), 'wb') do |file|
      file.write(image_io.read)
    end
    params[:designer][:image_url] = image_io.original_filename

    @designer = Designer.new(params[:designer])
    respond_to do |format|
      if @designer.save
        format.html { redirect_to admin_designers_path, notice: 'Designer inserito con successo.' }
        format.json { render json: @designer, status: :created, location: @designer }
      else
        format.html { render action: "new" }
        format.json { render json: @designer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /designers/1
  # PUT /designers/1.json
  def update
    @designer = Designer.find(params[:id])

    respond_to do |format|
      if @designer.update_attributes(params[:designer])
        format.html { redirect_to admin_designers_path, notice: 'Designer modificato con successo.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @designer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designers/1
  # DELETE /designers/1.json
  def destroy
    @designer = Designer.find(params[:id])
    @designer.destroy

    respond_to do |format|
      format.html { redirect_to admin_designers_path }
      format.json { head :no_content }
    end
  end
end
