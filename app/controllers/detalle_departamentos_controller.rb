class DetalleDepartamentosController < ApplicationController

  before_action :find_departamento
  #before_action :set_detalle_departamento, only: [:show, :edit, :update, :destroy]

  # GET /detalle_departamentos
  # GET /detalle_departamentos.json
  def index
    @departamento = Departamento.find(params[:departamento_id])

    if @departamento.detalle_departamento
        @detalle_departamentos = @departamento.detalle_departamento
    else
      if session[:usuario_id] == nil
        redirect_to :root
      else
        redirect_to(new_detalle_departamento_path(:departamento_id => @departamento.id))
      end
    end 
  end

  # GET /detalle_departamentos/1
  # GET /detalle_departamentos/1.json
  def show
    
    @detalle_departamento = DetalleDepartamento.find(params[:id])
  end

  # GET /detalle_departamentos/new
  def new
       @departamento = Departamento.find(params[:departamento_id])

    if @departamento.detalle_departamento
      @detalle_departamento = @departamento.detalle_departamento
      redirect_to(edit_detalle_departamento_path(@detalle_departamento,:departamento_id => @departamento.id))
    else
      @detalle_departamento = DetalleDepartamento.new(:departamento_id => @departamento.id)
    end 

  end

  # GET /detalle_departamentos/1/edit
  def edit
    @detalle_departamento = DetalleDepartamento.find(params[:id])
  end

  # POST /detalle_departamentos
  # POST /detalle_departamentos.json
  def create
    @detalle_departamento = DetalleDepartamento.create(detalle_departamento_params)
    @detalle_departamento.departamento = @departamento
    
    if @detalle_departamento.save 
      redirect_to(detalle_departamentos_path(:departamento_id => @departamento.id))
    else
      render 'new'
    end
    #respond_to do |format|
    #  if @detalle_departamento.save
    #    format.html { redirect_to @detalle_departamento, notice: 'Detalle departamento was successfully created.' }
    #   format.json { render :show, status: :created, location: @detalle_departamento }
    #  else
    #    format.html { render :new }
    #    format.json { render json: @detalle_departamento.errors, status: :unprocessable_entity }
    #  end
    #end

  end


  # PATCH/PUT /detalle_departamentos/1
  # PATCH/PUT /detalle_departamentos/1.json
  def update
    @detalle_departamento = DetalleDepartamento.find(params[:id])
    if @detalle_departamento.update_attributes(detalle_departamento_params)
      redirect_to(detalle_departamento_path(@detalle_departamento, :departamento_id => @departamento.id))
    else
      @departamentos = []
      Proyecto.all.map { |departamneto| @departamentos.append([departamneto.nombre, departamneto.id]) }
      render('edit')
    end
    #respond_to do |format|
    #  if @detalle_departamento.update(detalle_departamento_params)
    #    format.html { redirect_to @detalle_departamento, notice: 'Detalle departamento was successfully updated.' }
    #    format.json { render :show, status: :ok, location: @detalle_departamento }
    #  else
    #    format.html { render :edit }
    #    format.json { render json: @detalle_departamento.errors, status: :unprocessable_entity }
    #  end
    #end
  end



  # DELETE /detalle_departamentos/1
  # DELETE /detalle_departamentos/1.json
  def destroy
    @detalle_departamento = DetalleDepartamento.find(params[:id])
    @detalle_departamento.destroy
    respond_to do |format|
      format.html { redirect_to(detalle_departamentos_path(:departamento_id => @departamento.id), notice: 'Se eliminaron los detalles del departamento.') }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_departamento
      @detalle_departamento = DetalleDepartamento.find(params[:id])
    end

     def find_departamento
      @departamento = Departamento.find(params[:departamento_id])
    end

    # Only allow a list of trusted parameters through.
    def detalle_departamento_params
      params.require(:detalle_departamento).permit(:supTotal, :supTechada, :banios, :estacionamiento, :banioServicio, :closet, :recepcion, :condominio, :centroComercial, :cercaColegio, :parque, :intercomunicador, :ascensores, :ambientes, :descambientes, :ubicacion, :departamento_id, {fotos:[]} )
    end
end
