class ArcitlesController < ApplicationController
  before_action :set_arcitle, only: [:show, :edit, :update, :destroy]

  # GET /arcitles
  # GET /arcitles.json
  def index
    @arcitles = Arcitle.all
  end

  # GET /arcitles/1
  # GET /arcitles/1.json
  def show
  end

  # GET /arcitles/new
  def new
    @arcitle = Arcitle.new
  end

  # GET /arcitles/1/edit
  def edit
  end

  # POST /arcitles
  # POST /arcitles.json
  def create
    @arcitle = Arcitle.new(arcitle_params)

    respond_to do |format|
      if @arcitle.save
        format.html { redirect_to @arcitle, notice: 'Arcitle was successfully created.' }
        format.json { render :show, status: :created, location: @arcitle }
      else
        format.html { render :new }
        format.json { render json: @arcitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arcitles/1
  # PATCH/PUT /arcitles/1.json
  def update
    respond_to do |format|
      if @arcitle.update(arcitle_params)
        format.html { redirect_to @arcitle, notice: 'Arcitle was successfully updated.' }
        format.json { render :show, status: :ok, location: @arcitle }
      else
        format.html { render :edit }
        format.json { render json: @arcitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arcitles/1
  # DELETE /arcitles/1.json
  def destroy
    @arcitle.destroy
    respond_to do |format|
      format.html { redirect_to arcitles_url, notice: 'Arcitle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arcitle
      @arcitle = Arcitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arcitle_params
      params.require(:arcitle).permit(:title)
    end
end
