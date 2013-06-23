class DesignersController < ApplicationController
  def index
    @title = 'I nostri designers'
    @breadcrumb = '<span class="current_crumb">Designers </span>'
    @designers = Designer.all
    @first = Designer.first()
  end

  def show
    @designer = Designer.find(params[:id])
    @title = @designer.name
    @breadcrumb = '<a href="' + designers_path + '">Designers</a><span class="current_crumb">' + @designer.name + '</span>'
    @next = Designer.first(:conditions => ['id > ?', params[:id]])
    @previous = Designer.last(:conditions => ['id < ?', params[:id]])
  end

  def new
    @designer = Designer.new
    @title = "Nuovo Designer"
  end

  def edit
    @designer = Designer.find(params[:id])
    @title = "Modifica Designer"
  end

  def create
    if(params[:designer][:image_url])
      image_io = params[:designer][:image_url]
      File.open(Rails.root.join('app','assets','images','designers', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:designer][:image_url] = image_io.original_filename
    else
      params[:designer][:image_url] = 'missing.png';
    end

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

  def update
    @designer = Designer.find(params[:id])

    if(params[:designer][:image_url])
      image_io = params[:designer][:image_url]
      File.open(Rails.root.join('app','assets','images','designers', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:designer][:image_url] = image_io.original_filename
    end

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

  def destroy
    @designer = Designer.find(params[:id])
    @designer.destroy

    respond_to do |format|
      format.html { redirect_to admin_designers_path }
      format.json { head :no_content }
    end
  end
end
