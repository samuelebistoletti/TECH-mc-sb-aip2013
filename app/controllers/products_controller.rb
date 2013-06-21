class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    if(params[:designer_id])
      @designer = Designer.find(params[:designer_id])
      @title = 'Prodotti progettati da ' + @designer.name
      @breadcrumb = '<a>Designers</a><a>' + @designer.name + '</a><span class="current_crumb">Prodotti </span>'
      @products = Product.find_all_by_designer_id(params[:designer_id])
    elsif(params[:partner_id])
      @partner = Partner.find(params[:partner_id])
      @title = 'Prodotti di ' + @partner.name
      @breadcrumb = '<a>Partners</a><a>' + @partner.name + '</a><span class="current_crumb">Prodotti </span>'
      @products = Product.find_all_by_designer_id(params[:partner_id])
    elsif(params[:reseller_id])
      @reseller = Reseller.find(params[:reseller_id])
      @title = 'Prodotti venduti da ' + @reseller.name
      @breadcrumb = '<a>Rivenditori</a><a>' + @reseller.name + '</a><span class="current_crumb">Prodotti </span>'
      @products = Product.find_all_by_designer_id(params[:reseller_id])
    end

  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @images = @product.images
    @title = @product.name
    @category = Category.find(@product.category_id)
    @breadcrumb = '<a href="' + categories_path + '">Prodotti</a><a href="' + category_path(@category.id) + '">' + @category.name + '</a><span class="current_crumb">' + @product.name + '</span>'
    @services = Service.find_all_by_service_type(0) + @product.services
    @designer = @product.designer
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
    @title = "Nuovo Prodotto"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    @title = "Modifica Prodotto"
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to admin_products_path, notice: 'Prodotto inserito con successo.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to admin_products_path, notice: 'Product aggiornato con successo.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to admin_products_path }
      format.json { head :no_content }
    end
  end
end
