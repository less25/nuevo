class DetallesVentaController < ApplicationController
  before_action :set_detalles_ventum, only: %i[ show edit update destroy ]

  # GET /detalles_venta or /detalles_venta.json
  def index
    @detalles_venta = DetallesVentum.all
  end

  # GET /detalles_venta/1 or /detalles_venta/1.json
  def show
  end

  # GET /detalles_venta/new
  def new
    @detalles_ventum = DetallesVentum.new
  end

  # GET /detalles_venta/1/edit
  def edit
  end

  # POST /detalles_venta or /detalles_venta.json
  def create
    @detalles_ventum = DetallesVentum.new(detalles_ventum_params)

    respond_to do |format|
      if @detalles_ventum.save
        format.html { redirect_to @detalles_ventum, notice: "Detalles ventum was successfully created." }
        format.json { render :show, status: :created, location: @detalles_ventum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detalles_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalles_venta/1 or /detalles_venta/1.json
  def update
    respond_to do |format|
      if @detalles_ventum.update(detalles_ventum_params)
        format.html { redirect_to @detalles_ventum, notice: "Detalles ventum was successfully updated." }
        format.json { render :show, status: :ok, location: @detalles_ventum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detalles_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalles_venta/1 or /detalles_venta/1.json
  def destroy
    @detalles_ventum.destroy!

    respond_to do |format|
      format.html { redirect_to detalles_venta_path, status: :see_other, notice: "Detalles ventum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalles_ventum
      @detalles_ventum = DetallesVentum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detalles_ventum_params
      params.require(:detalles_ventum).permit(:venta_id, :producto_id, :cantidad, :precio_unitario, :subtotal)
    end
end
