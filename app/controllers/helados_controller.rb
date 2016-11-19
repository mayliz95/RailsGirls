class HeladosController < ApplicationController
  before_action :set_helado, only: [:show, :edit, :update, :destroy]

  # GET /helados
  # GET /helados.json
  def index
    @helados = Helado.all
  end

  # GET /helados/1
  # GET /helados/1.json
  def show
  end

  # GET /helados/new
  def new
    @helado = Helado.new
  end

  # GET /helados/1/edit
  def edit
  end

  # POST /helados
  # POST /helados.json
  def create
    @helado = Helado.new(helado_params)

    respond_to do |format|
      if @helado.save
        format.html { redirect_to @helado, notice: 'Helado was successfully created.' }
        format.json { render :show, status: :created, location: @helado }
      else
        format.html { render :new }
        format.json { render json: @helado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /helados/1
  # PATCH/PUT /helados/1.json
  def update
    respond_to do |format|
      if @helado.update(helado_params)
        format.html { redirect_to @helado, notice: 'Helado was successfully updated.' }
        format.json { render :show, status: :ok, location: @helado }
      else
        format.html { render :edit }
        format.json { render json: @helado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helados/1
  # DELETE /helados/1.json
  def destroy
    @helado.destroy
    respond_to do |format|
      format.html { redirect_to helados_url, notice: 'Helado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helado
      @helado = Helado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def helado_params
      params.require(:helado).permit(:nombre, :descripcion, :foto, :precio)
    end
end
