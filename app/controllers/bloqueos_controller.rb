class BloqueosController < ApplicationController
  before_action :set_bloqueo, only: [:show, :edit, :update, :destroy]

  # GET /bloqueos
  # GET /bloqueos.json
  def index
    @bloqueos = Bloqueo.all
  end

  # GET /bloqueos/1
  # GET /bloqueos/1.json
  def show
  end

  # GET /bloqueos/new
  def new
    @bloqueo = Bloqueo.new
  end

  # GET /bloqueos/1/edit
  def edit
  end

  # POST /bloqueos
  # POST /bloqueos.json
  def create
    @bloqueo = Bloqueo.new(bloqueo_params)

    respond_to do |format|
      if @bloqueo.save
        format.html { redirect_to @bloqueo, notice: 'Bloqueo was successfully created.' }
        format.json { render :show, status: :created, location: @bloqueo }
      else
        format.html { render :new }
        format.json { render json: @bloqueo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloqueos/1
  # PATCH/PUT /bloqueos/1.json
  def update
    respond_to do |format|
      if @bloqueo.update(bloqueo_params)
        format.html { redirect_to @bloqueo, notice: 'Bloqueo was successfully updated.' }
        format.json { render :show, status: :ok, location: @bloqueo }
      else
        format.html { render :edit }
        format.json { render json: @bloqueo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloqueos/1
  # DELETE /bloqueos/1.json
  def destroy
    @bloqueo.destroy
    respond_to do |format|
      format.html { redirect_to bloqueos_url, notice: 'Bloqueo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloqueo
      @bloqueo = Bloqueo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bloqueo_params
      params.require(:bloqueo).permit(:nombres, :apellidos, :dni, :proyecto, :departamento, :voucher, :tipo, :monto)
    end
end
