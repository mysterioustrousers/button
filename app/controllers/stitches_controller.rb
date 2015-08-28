class StitchesController < ApplicationController
  before_action :set_stitch, only: [:show, :edit, :update, :destroy]

  # GET /stitches
  # GET /stitches.json
  def index
    @stitches = Stitch.all
  end

  # GET /stitches/1
  # GET /stitches/1.json
  def show
  end

  # GET /stitches/new
  def new
    @stitch = Stitch.new
  end

  # GET /stitches/1/edit
  def edit
  end

  # POST /stitches
  # POST /stitches.json
  def create
    @stitch = Stitch.new(stitch_params)

    respond_to do |format|
      if @stitch.save
        format.html { redirect_to  @stitch, notice: 'Stitch was successfully created.' }
        format.xml  { render xml:  @stitch, status: :created }
        format.json { render json: @stitch, status: :created }
      else
        format.html { render action: 'new' }
        format.xml  { render xml:  @stitch.errors, status: :unprocessable_entity }
        format.json { render json: @stitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stitches/1
  # PATCH/PUT /stitches/1.json
  def update
    respond_to do |format|
      if @stitch.update(stitch_params)
        format.html { redirect_to @stitch, notice: 'Stitch was successfully updated.' }
        format.xml  { head :no_content }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.xml  { render xml:  @stitch.errors, status: :unprocessable_entity }
        format.json { render json: @stitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stitches/1
  # DELETE /stitches/1.json
  def destroy
    @stitch.destroy
    respond_to do |format|
      format.html { redirect_to stitches_url }
      format.xml  { head :no_content }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stitch
      @stitch = Stitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stitch_params
      params.require(:stitch).permit(:thread_color, :length)
    end
end
