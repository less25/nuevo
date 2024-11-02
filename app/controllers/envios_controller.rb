class EnviosController < ApplicationController
  before_action :set_envio, only: %i[ show edit update destroy ]

  # GET /envios or /envios.json
  def index
    @envios = Envio.all
  end

  # GET /envios/1 or /envios/1.json
  def show
  end

  # GET /envios/new
  def new
    @envio = Envio.new
  end

  # GET /envios/1/edit
  def edit
  end

  # POST /envios or /envios.json
  def create
    @envio = Envio.new(envio_params)

    respond_to do |format|
      if @envio.save
        format.html { redirect_to @envio, notice: "Envio was successfully created." }
        format.json { render :show, status: :created, location: @envio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @envio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envios/1 or /envios/1.json
  def update
    respond_to do |format|
      if @envio.update(envio_params)
        format.html { redirect_to @envio, notice: "Envio was successfully updated." }
        format.json { render :show, status: :ok, location: @envio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @envio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envios/1 or /envios/1.json
  def destroy
    @envio.destroy!

    respond_to do |format|
      format.html { redirect_to envios_path, status: :see_other, notice: "Envio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envio
      @envio = Envio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def envio_params
      params.require(:envio).permit(:venta_id, :direccion_envio, :fecha_envio, :estado)
    end
end
