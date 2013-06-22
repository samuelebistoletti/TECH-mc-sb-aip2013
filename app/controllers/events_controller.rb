class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @title = 'I nostri eventi'
    @breadcrumb = '<span class="current_crumb">Eventi</span>'
    @events = Event.all
    @first = Event.first()

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    @title = @event.name
    @breadcrumb = '<a href=' + events_path + '>Eventi</a><span class="current_crumb">' + @event.name + '</span>'
    @next = Event.first(:conditions => ['id > ?', params[:id]])
    @previous = Event.last(:conditions => ['id < ?', params[:id]])
    @partners = @event.partners

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @title = 'Nuovo Evento'
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @title = 'Modifica Evento'
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    if(params[:event][:image_url])
      image_io = params[:event][:image_url]
      File.open(Rails.root.join('app','assets','images','events', image_io.original_filename), 'wb') do |file|
        file.write(image_io.read)
      end
      params[:event][:image_url] = image_io.original_filename
    else
      params[:event][:image_url] = 'missing.png'
    end

    @event = Event.new(params[:event])
    respond_to do |format|
      if @event.save
        format.html { redirect_to admin_events_path, notice: 'Evento inserito con successo.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to admin_events_path, notice: 'Evento aggiornato con successo.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to admin_events_path }
      format.json { head :no_content }
    end
  end
end
