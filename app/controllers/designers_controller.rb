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

  # GET /designers/new
  # GET /designers/new.json
  def new
    @designer = Designer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @designer }
    end
  end

  # GET /designers/1/edit
  def edit
    @designer = Designer.find(params[:id])
  end

  # POST /designers
  # POST /designers.json
  def create
    @designer = Designer.new(params[:designer])

    respond_to do |format|
      if @designer.save
        format.html { redirect_to @designer, notice: 'Designer was successfully created.' }
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
        format.html { redirect_to @designer, notice: 'Designer was successfully updated.' }
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
      format.html { redirect_to designers_url }
      format.json { head :no_content }
    end
  end
end
