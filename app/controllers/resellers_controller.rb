class ResellersController < ApplicationController
  def search
    @title = 'Ricerca Rivenditori'
    @breadcrumb = '<span class="current_crumb">Cerca rivenditori</span>'
    @reseller = Reseller.all
  end

  def index
    if(params[:query])
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
    elsif(params[:product])
      @product = Product.find(params[:product])
      @category = @product.category
      @title = 'Ricerca rivenditori per "' + @product.name + '"'
      @resellers = @product.resellers
      @back = category_product_path(@category,@product)
      @breadcrumb = "<a href=\"#{categories_path}\">Prodotti</a><a href=\"#{category_products_path(@category)}\">#{@category.name}</a><a href=\"#{category_product_path(@category,@product)}\">#{@product.name}</a><span class=\"current_crumb\">Ricerca rivenditori</span>"
      if(@resellers.size!=0)
        @gd = reseller_path(@resellers.first) + '?product=' + @product.id.to_s
      end
      render :template => 'resellers/find'
    end
  end

  def show
    @reseller = Reseller.find(params[:id])

    if(!params[:query] && !params[:product])
      params[:query] = ''
    end

    if(params[:query])
      @query = params[:query]
      @resellers = Reseller.where("region LIKE ? OR province LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
      @breadcrumb = "<a href=\"#{resellers_search_path}\">Cerca rivenditori</a><a href=\"/resellers/?query=#{@query}\">Risultati della ricerca</a><span class=\"current_crumb\">#{@title}</span>"
    elsif(params[:product])
      @product = Product.find(params[:product])
      @category = @product.category
      @resellers = @product.resellers
      @breadcrumb = "<a href=\"#{categories_path}\">Prodotti</a><a href=\"#{category_products_path(@category)}\">#{@category.name}</a><a href=\"#{category_product_path(@category,@product)}\">#{@product.name}</a><a href=\"#{resellers_path+'?product='+@product.id.to_s}\">Ricerca rivenditori</a><span class=\"current_crumb\">#{@reseller.name}</span>"
    end

    @partners = Partner.where(:id => @reseller.products.select(:partner_id))
    @next = @resellers.first(:conditions => ['resellers.id > ?', params[:id]])
    @previous = @resellers.last(:conditions => ['resellers.id < ?', params[:id]])

    @title = @reseller.name
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
