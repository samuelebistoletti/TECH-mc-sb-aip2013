class ProductsController < ApplicationController
  def index
    if(params[:category_id])

      @category = Category.find(params[:category_id])
      @title = 'Prodotti nella categoria ' + @category.name
      @breadcrumb = '<a href="' + categories_path + '">Prodotti</a><span class="current_crumb">' + @category.name + '</span>'
      @products = Product.find_all_by_category_id(params[:category_id])
      @gd_text = 'Esplora i prodotti di questa categoria';
      @gd_link = category_path(@category) + '/products/' + @products.first().id.to_s
      @base_link = category_products_path(@category)

    elsif(params[:designer_id])

      @designer = Designer.find(params[:designer_id])
      @title = 'Prodotti progettati da ' + @designer.name
      @breadcrumb = '<a href="' + designers_path + '">Designers</a><a href="' + designer_path(@designer) + '">' + @designer.name + '</a><span class="current_crumb">Prodotti </span>'
      @products = Product.find_all_by_designer_id(params[:designer_id])
      @gd_text = 'Esplora i prodotti di questo designer';
      @gd_link = designer_product_path(@designer,@products.first())
      @back = designer_path(@designer)
      @base_link = designer_products_path(@designer)

    elsif(params[:partner_id])

      @partner = Partner.find(params[:partner_id])
      @title = 'Prodotti di ' + @partner.name
      @breadcrumb = '<a href="' + partners_path + '">Partners</a><a href="' + partner_path(@partner) + '">' + @partner.name + '</a><span class="current_crumb">Prodotti </span>'
      @products = Product.find_all_by_partner_id(params[:partner_id])
      @gd_text = 'Scopri i prodotti di ' + @partner.name;
      @gd_link = partner_product_path(@partner,@products.first())
      @back = partner_path(@partner)
      @base_link = partner_products_path(@partner)

    elsif(params[:reseller_id])
      params[:query] ? @query = params[:query] : @query = ''
      @reseller = Reseller.find(params[:reseller_id])
      @title = 'Prodotti venduti da ' + @reseller.name
      @breadcrumb = "<a href=\"#{resellers_search_path}\">Cerca rivenditori</a><a href=\"/resellers/?query=#{@query}\">Risultati della ricerca</a><a href=\"#{reseller_path(@reseller)+'?query='+@query}\">#{@reseller.name}</a><span class=\"current_crumb\">Prodotti</span>"
      #@breadcrumb = '<a href="' + resellers_path + '">Rivenditori</a><a href="' + reseller_path(@reseller) + '">' + @reseller.name + '</a><span class="current_crumb">Prodotti </span>'
      @products = @reseller.products
      @gd_text = 'Scopri i prodotti venduti da questo rivenditori';
      @gd_link = reseller_product_path(@reseller,@products.first())
      @back = reseller_path(@reseller)
      @base_link = reseller_products_path(@reseller)
    end
  end

  def show
    @product = Product.find(params[:id])
    @images = @product.images
    @title = @product.name
    @services = Service.find_all_by_service_type(0) + @product.services
    @designer = @product.designer
    @partner = @product.partner
    @category = @product.category
    if(params[:category_id])

      @breadcrumb = '<a href="' + categories_path + '">Prodotti</a><a href="' + category_path(@category) + '">' + @category.name + '</a><span class="current_crumb">' + @product.name + '</span>'
      @up_text = 'Vai all\'indice prodotti della categoria ' + @category.name
      @up_link = category_products_path(@category)

      n = @category.products.first(:conditions => ['id > ?', params[:id]])
      p = @category.products.last(:conditions => ['id < ?', params[:id]])
      @next_link = category_product_path(@category, n) if(n)
      @previous_link = category_product_path(@category, p) if(p)

    elsif(params[:designer_id])

      @breadcrumb = '<a href="' + designers_path + '">Designers</a><a href="' + designer_path(@designer) + '">' + @designer.name + '</a><a href="' + designer_products_path(@designer) + '">Prodotti</a><span class="current_crumb">' + @product.name + '</span>'
      @up_text = 'Vai ai prodotti progettati da ' + @designer.name
      @up_link = designer_products_path(@designer)

      n = @designer.products.first(:conditions => ['id > ?', params[:id]])
      p = @designer.products.last(:conditions => ['id < ?', params[:id]])
      @next_link = designer_product_path(@designer, n) if(n)
      @previous_link = designer_product_path(@designer, p) if(p)

    elsif(params[:partner_id])

      @breadcrumb = '<a href="' + partners_path + '">Partners</a><a href="' + partner_path(@partner) + '">' + @partner.name + '</a><a href="' + partner_products_path(@partner) + '">Prodotti</a><span class="current_crumb">' + @product.name + '</span>'
      @up_text = 'Vai ai prodotti di ' + @partner.name
      @up_link = partner_products_path(@partner)

      n = @partner.products.first(:conditions => ['id > ?', params[:id]])
      p = @partner.products.last(:conditions => ['id < ?', params[:id]])
      @next_link = partner_product_path(@partner, n) if(n)
      @previous_link = partner_product_path(@partner, p) if(p)

    elsif(params[:reseller_id])
      params[:query] ? @query = params[:query] : @query = ''
      @reseller = Reseller.find(params[:reseller_id])
      @breadcrumb = "<a href=\"#{resellers_search_path}\">Cerca rivenditori</a><a href=\"/resellers/?query=#{@query}\">Risultati della ricerca</a><a href=\"#{reseller_path(@reseller)+'?query='+@query}\">#{@reseller.name}</a><a href=\"#{reseller_products_path(@reseller)+'?query='+@query}\">Prodotti</a><span class=\"current_crumb\">#{@product.name}</span>"
      @up_text = 'Vai ai prodotti venduti da ' + @reseller.name
      @up_link = reseller_products_path(@reseller)

      n = @reseller.products.first(:conditions => ['products.id > ?', params[:id]])
      p = @reseller.products.last(:conditions => ['products.id < ?', params[:id]])
      @next_link = reseller_product_path(@reseller, n) if(n)
      @previous_link = reseller_product_path(@reseller, p) if(p)
    end
  end

  def new
    @product = Product.new
    @title = "Nuovo Prodotto"
    @designers = Designer.all
    @categories = Category.all
    @partners = Partner.all
  end

  def edit
    @product = Product.find(params[:id])
    @title = "Modifica Prodotto"
    @designers = Designer.all
    @categories = Category.all
    @partners = Partner.all
  end

  def create
    if(params[:product][:image_url])
      image_io = params[:product][:image_url]
      File.open(Rails.root.join('app','assets','images','products', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:product][:image_url] = image_io.original_filename
    else
      params[:product][:image_url] = 'missing.png';
    end

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

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to admin_products_path }
      format.json { head :no_content }
    end
  end
end