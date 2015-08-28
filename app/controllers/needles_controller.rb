class NeedlesController < ApplicationController
  before_action :authorize
  before_action :set_needle, only: [:show, :edit, :update, :destroy]

  # GET /needles
  # GET /needles.json
  def index
    @needles = Needle.all
  end

  # GET /needles/1
  # GET /needles/1.json
  def show
  end

  # GET /needles/new
  def new
    @needle = Needle.new
  end

  # GET /needles/1/edit
  def edit
  end

  # POST /needles
  # POST /needles.json
  def create
    @needle = Needle.new(needle_params)

    respond_to do |format|
      if @needle.save
        format.html { redirect_to  @needle, notice: 'Needle was successfully created.' }
        format.xml  { render xml:  @needle, status: :created }
        format.json { render json: @needle, status: :created }
      else
        format.html { render action: 'new' }
        format.xml  { render xml:  @needle.errors, status: :unprocessable_entity }
        format.json { render json: @needle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /needles/1
  # PATCH/PUT /needles/1.json
  def update
    respond_to do |format|
      if @needle.update(needle_params)
        format.html { redirect_to @needle, notice: 'Needle was successfully updated.' }
        format.xml  { head :no_content }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.xml  { render xml:  @needle.errors, status: :unprocessable_entity }
        format.json { render json: @needle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needles/1
  # DELETE /needles/1.json
  def destroy
    @needle.destroy
    respond_to do |format|
      format.html { redirect_to needles_url }
      format.xml  { head :no_content }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_needle
      @needle = Needle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def needle_params
      params.require(:needle).permit(:sharpness, :length)
    end
end
