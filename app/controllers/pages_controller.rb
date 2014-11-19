class PagesController < ApplicationController
  before_action :set_event
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
    @pages = @event.pages
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = @event.pages.new
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = @event.pages.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to [@event, @page], notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to [@event, @page], notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to event_pages_url(@event), notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
  
    def set_page
      @page = @event.pages.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      # todo: figure out how to tell rails that we do want to actually
      # require :event_id, too, because apparently just putting in a
      # require is confusing and wrong
      params.require(:page).permit(:name, :content)
    end
end
