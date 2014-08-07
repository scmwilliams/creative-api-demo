class CtaController < ApplicationController
  before_action :set_ctum, only: [:show, :edit, :update, :destroy]

  # GET /cta
  # GET /cta.json
  def index
    @cta = Ctum.all
  end

  # GET /cta/1
  # GET /cta/1.json
  def show
  end

  # GET /cta/new
  def new
    @ctum = Ctum.new
  end

  # GET /cta/1/edit
  def edit
  end

  # POST /cta
  # POST /cta.json
  def create
    @ctum = Ctum.new(ctum_params)

    respond_to do |format|
      if @ctum.save
        format.html { redirect_to @ctum, notice: 'Ctum was successfully created.' }
        format.json { render :show, status: :created, location: @ctum }
      else
        format.html { render :new }
        format.json { render json: @ctum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cta/1
  # PATCH/PUT /cta/1.json
  def update
    respond_to do |format|
      if @ctum.update(ctum_params)
        format.html { redirect_to @ctum, notice: 'Ctum was successfully updated.' }
        format.json { render :show, status: :ok, location: @ctum }
      else
        format.html { render :edit }
        format.json { render json: @ctum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cta/1
  # DELETE /cta/1.json
  def destroy
    @ctum.destroy
    respond_to do |format|
      format.html { redirect_to cta_url, notice: 'Ctum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ctum
      @ctum = Ctum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ctum_params
      params.require(:ctum).permit(:name, :url, :new_window, :full_screen, :ad_unit_id, :pixel_width, :pixel_height, :right_offset, :top_offset)
    end
end
