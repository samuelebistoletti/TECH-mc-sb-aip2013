class EventsController < ApplicationController
  def index
    @title = 'I nostri eventi'
    @breadcrumb = '<span class="current_crumb">Eventi</span>'
    @events = Event.all
    @first = Event.first()
  end

  def show
    @event = Event.find(params[:id])
    @title = @event.name
    @breadcrumb = '<a href=' + events_path + '>Eventi</a><span class="current_crumb">' + @event.name + '</span>'
    @next = Event.first(:conditions => ['id > ?', params[:id]])
    @previous = Event.last(:conditions => ['id < ?', params[:id]])
    @partners = @event.partners
  end

  def new
    @title = 'Nuovo Evento'
    @event = Event.new
  end

  def edit
    @title = 'Modifica Evento'
    @event = Event.find(params[:id])
  end

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

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to admin_events_path }
      format.json { head :no_content }
    end
  end
end
