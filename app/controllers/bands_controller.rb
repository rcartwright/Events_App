class BandsController < ApplicationController

  def index
    @bands = Band.all.sort_by &:name
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @band = Band.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @band = Band.new(band_params)

    respond_to do |format|
      if @band.save
        format.html { redirect_to @band, notice: 'Band was successfully created.' }
        format.json { render :show, status: :created, location: @band }
      else
        format.html { render :new }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band
      @band = Band.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_params
      params.require(:band).permit(:band_name, :date, :time, :comments, :created_by)
    end

end
