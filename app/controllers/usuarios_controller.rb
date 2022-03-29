class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    if session[:usuario_id] != nil and session[:usuario_perfil] == '1'
      @usuarios = Usuario.all
    else
      redirect_to :root
    end
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    if session[:usuario_id] != nil and session[:usuario_perfil] == '1'
      @usuario = Usuario.new
    else
      redirect_to :root
    end
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create

    if session[:usuario_id] != nil and session[:usuario_perfil] == '1'

            @usuario = Usuario.new(usuario_params)

            respond_to do |format|
              if @usuario.save
                format.html { redirect_to @usuario, notice: 'El usuario fue creado satisfactoriamente.' }
                format.json { render :show, status: :created, location: @usuario }
              else
                format.html { render :new }
                format.json { render json: @usuario.errors, status: :unprocessable_entity }
              end
            end
    else
            redirect_to :root
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'El usuario fue actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'El usuario fue eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usuario_params
      params.require(:usuario).permit(:dni, :nombres, :apellidos, :perfil, :email, :password)
    end
end
