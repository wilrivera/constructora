class CitationsController < ApplicationController
  before_action :set_citation, only: [:show, :edit, :update, :destroy]

  # GET /citations
  # GET /citations.json
  def index
    if session[:usuario_id] == nil
      redirect_to :root

    else
        if params[:dni] || params[:nombre] || params[:agente]
          dni = params[:dni]
          nombre = params[:nombre]
          agente = params[:agente]
          @citations = Citation.where(["dni LIKE ? AND nombre LIKE ? AND agente LIKE ? ", "%#{dni}%", "%#{nombre}%", "%#{agente}%"])
        else
          @citations = Citation.all
          @citations = Citation.paginate({page: params[:page], per_page: 5})
        end
      end
  end

  # GET /citations/1
  # GET /citations/1.json
  def show
  end

  def show_user
    @citation = Citation.find(params[:id])
    
  end



  # GET /citations/new
  def new
    @citation = Citation.new
  end

  # GET /citations/1/edit
  def edit
    if session[:usuario_id] == nil
      redirect_to :root
    else
      @citation = Citation.find(params[:id])
    end

  end

  # POST /citations
  # POST /citations.json
  def create
    @citation = Citation.new(citation_params)

    #respond_to do |format|
      if @citation.save
        redirect_to(@citation)
        #format.html { redirect_to @citation, notice: 'Sus datos fueron enviados con éxito.' }
        #format.json { render :show, status: :created, location: @citation }
      else
        render 'new'
        #format.html { render :new }
        #format.json { render json: @citation.errors, status: :unprocessable_entity }
      end
    #end
  end

  # PATCH/PUT /citations/1
  # PATCH/PUT /citations/1.json
  def update
    if session[:usuario_id] == nil
      redirect_to :root
    else

          respond_to do |format|
            if @citation.update(citation_params)
              format.html { redirect_to citations_url, notice: 'Los datos de la cita fueron actualizados.' }
              format.json { render :show, status: :ok, location: @citation }
            else
              format.html { render :edit }
              format.json { render json: @citation.errors, status: :unprocessable_entity }
            end
          end
      end

  end

  # DELETE /citations/1
  # DELETE /citations/1.json
  def destroy
    if session[:usuario_id] != nil and session[:usuario_perfil] == '1'
        @citation.destroy
        respond_to do |format|
          format.html { redirect_to citations_url, notice: 'Cita eliminada' }
          format.json { head :no_content }
        end
   else
    redirect_to :root
   end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citation
      @citation = Citation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def citation_params
      params.require(:citation).permit(:dni, :nombre, :apellido, :email, :telefono, :fechacita, :mensaje, :agente)
    end
end
