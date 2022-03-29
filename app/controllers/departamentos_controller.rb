class DepartamentosController < ApplicationController
  before_action :find_proyecto
  #before_action :set_departamento, only: [:show, :edit, :update, :destroy]

  # GET /departamentos
  # GET /departamentos.json
  def index
    #obtener el  Proyecto con el id recibido
    #@proyecto = Proyecto.find(params[:proyecto_id])    
    #@departamentos = @proyecto.departamentos    

    if params[:piso] || params[:numdormitorio]
      
      @proyecto = Proyecto.find(params[:proyecto_id])
      piso = params[:piso]
      numdormitorio = params[:numdormitorio]
      @departamentos = Departamento.where(["proyecto_id = ? AND piso LIKE ? AND numdormitorio LIKE ?", params[:proyecto_id], "%#{piso}%", "%#{numdormitorio}%"])

    else
      @proyecto = Proyecto.find(params[:proyecto_id])    
      @departamentos = @proyecto.departamentos

    end

    #@departamentos = Departamento.all
  
  end

  # GET /departamentos/1
  # GET /departamentos/1.json
  def show

    @departamento = Departamento.find(params[:id])
    @detalle_departamentos = @departamento.detalle_departamento
  end

  def listadepartamentos
    @proyecto = Proyecto.find(params[:proyecto_id])    
    @departamentos = @proyecto.departamentos
    
  end

  
  def listaproyectos

    #obtener el  Proyecto con el id recibido
    @proyecto = Proyecto.find(params[:proyecto_id])
    #buscar los departamentos del author
    @departamentos = @proyecto.departamentos
     
    #@departamentos = Departamento.all
    
  end

  # GET /departamentos/new
  def new
    @departamento = Departamento.new(:proyecto_id => @proyecto.id)
    #@departamento = Departamento.new
  end


  
  def create
    #@author = Author.find(params[:author_id])
    @departamento = Departamento.create(departamento_params)
    @departamento.proyecto = @proyecto
    if @departamento.save 
      redirect_to(departamentos_path(:proyecto_id => @proyecto.id))
    else
      render 'new'
    end
  end


  # GET /departamentos/1/edit
  def edit
    @departamento = Departamento.find(params[:id])
  end

  # POST /departamentos
  # POST /departamentos.json
  
  #def create
    #@departamento = Departamento.new(departamento_params)

    #respond_to do |format|
      #if @departamento.save
        #format.html { redirect_to @departamento, notice: 'Departamento was successfully created.' }
        #format.json { render :show, status: :created, location: @departamento }
      #else
        #format.html { render :new }
        #format.json { render json: @departamento.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  # PATCH/PUT /departamentos/1
  # PATCH/PUT /departamentos/1.json
  #def update
    #respond_to do |format|
      #if @departamento.update(departamento_params)
        #format.html { redirect_to @departamento, notice: 'Departamento was successfully updated.' }
        #format.json { render :show, status: :ok, location: @departamento }
      #else
        #format.html { render :edit }
        #format.json { render json: @departamento.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  def update
    #@author = Author.find(params[:author_id])
    @departamento = Departamento.find(params[:id])
    if @departamento.update_attributes(departamento_params)
      redirect_to(departamento_path(@departamento, :proyecto_id => @proyecto.id))
    else
      @proyectos = []
      Proyecto.all.map { |proyecto| @proyectos.append([proyecto.nombre, proyecto.id]) }
      render('edit')
    end
  end

  def delete

  end

  # DELETE /departamentos/1
  # DELETE /departamentos/1.json
  def destroy
    @departamento = Departamento.find(params[:id])
    @departamento.destroy
    respond_to do |format|
      format.html { redirect_to(departamentos_path(:proyecto_id => @proyecto.id), notice: 'Departamento fué eliminado.') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departamento
      @departamento = Departamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def departamento_params
      params.require(:departamento).permit(:numdpto, :piso, :descripcion, :precio, :area, :numdormitorio, :foto, :proyecto_id)
    end

    def find_proyecto

      @proyecto = Proyecto.find(params[:proyecto_id])
    end
end
