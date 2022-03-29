class ListaDepartamentosController < ApplicationController
  before_action :set_lista_departamento, only: [:show, :edit, :update, :destroy]

  def index
  	#@lista_departamentos = Departamento.all

    if params[:piso] || params[:numdormitorio]
      piso = params[:piso]
      numdormitorio = params[:numdormitorio]
      @lista_departamentos = Departamento.where(["piso LIKE ? AND numdormitorio LIKE ?", "%#{piso}%", "%#{numdormitorio}%"])
    else
      @lista_departamentos = Departamento.all
    end

  
  	
  end

  def new
    #@departamento = Departamento.new(:proyecto_id => @proyecto.id)
    @lista_departamento = Departamento.new
  end

  def show
    @lista_departamento = Departamento.find(params[:id])

  end

  def create
    @lista_departamento = Departamento.new(lista_departamento_params)

    respond_to do |format|
      if @lista_departamento.save
        format.html { redirect_to lista_departamento_path(@lista_departamento), notice: 'Departamento guardado exitosamente.' }
        format.json { render :show, status: :created, location: @lista_departamento }
      else
        format.html { render :new }
        format.json { render json: @lista_departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @lista_departamento.update(lista_departamento_params)
        format.html { redirect_to lista_departamento_path(@lista_departamento), notice: 'Departamento guardado exitosamente.' }
        format.json { render :show, status: :ok, location: @lista_departamento }
      else
        format.html { render :edit }
        format.json { render json: @lista_departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lista_departamento.destroy
    respond_to do |format|
      format.html { redirect_to lista_departamentos_url, notice: 'El Departamento ha sido eliminado.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_departamento
      @lista_departamento = Departamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lista_departamento_params
      params.require(:departamento).permit(:numdpto, :piso, :descripcion, :precio, :area, :numdormitorio, :foto, :proyecto_id)
    end


end
