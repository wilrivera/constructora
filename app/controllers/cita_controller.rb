class CitaController < ApplicationController
  before_action :set_citum, only: [:show, :edit, :update, :destroy]

  layout 'static'
  
  # GET /cita
  # GET /cita.json
  def index
    @cita = Citum.all
  end

  # GET /cita/1
  # GET /cita/1.json
  def show
  end

  def showcita
  end


  # GET /cita/new
  def new
    @citum = Citum.new
  end

  # GET /cita/1/edit
  def edit
  end

  # POST /cita
  # POST /cita.json
  def create

    @citum = Citum.new(citum_params)
 #  redirect_to "/"

   respond_to do |format|
      if @citum.save
       format.html { redirect_to @citum, notice: 'Gracias por su tiempo. Los datos de la cita fueron creados con éxito.' }
       format.json { render :showcita, status: :created, location: @citum }
    else
       format.html { render :new }
      format.json { render json: @citum.errors, status: :unprocessable_entity }
    end
  end
    

#   respond_to do |format|
 #     if @citum.save
 #       format.html { redirect_to @citum, notice: 'Los datos de la cita fueron creados con éxito.' }
 #       format.json { render :show, status: :created, location: @citum }
 #    else
 #       format.html { render :new }
 #       format.json { render json: @citum.errors, status: :unprocessable_entity }
 #     end
 #   end

  end

  # PATCH/PUT /cita/1
  # PATCH/PUT /cita/1.json
  def update
    respond_to do |format|
      if @citum.update(citum_params)
        format.html { redirect_to @citum, notice: 'Los datos de la cita fueron actualizados con éxito.' }
        format.json { render :show, status: :ok, location: @citum }
      else
        format.html { render :edit }
        format.json { render json: @citum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cita/1
  # DELETE /cita/1.json
  def destroy
    @citum.destroy
    respond_to do |format|
      format.html { redirect_to cita_url, notice: 'Los datos de la cita fueron eliminados.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citum
      @citum = Citum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def citum_params
      params.require(:citum).permit(:dni, :nombre, :apellido, :email, :telefono, :fechacita)
    end
end


