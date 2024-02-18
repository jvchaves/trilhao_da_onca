class OrganizadorsController < ApplicationController
  before_action :set_organizador, only: %i[ show edit update destroy ]

  # GET /organizadors or /organizadors.json
  def index
    @organizadors = Organizador.all
  end

  # GET /organizadors/1 or /organizadors/1.json
  def show
  end

  # GET /organizadors/new
  def new
    @organizador = Organizador.new
  end

  # GET /organizadors/1/edit
  def edit
  end

  # POST /organizadors or /organizadors.json
  def create
    @organizador = Organizador.new(organizador_params)

    respond_to do |format|
      if @organizador.save
        format.html { redirect_to organizador_url(@organizador), notice: "Organizador was successfully created." }
        format.json { render :show, status: :created, location: @organizador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organizador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizadors/1 or /organizadors/1.json
  def update
    respond_to do |format|
      if @organizador.update(organizador_params)
        format.html { redirect_to organizador_url(@organizador), notice: "Organizador was successfully updated." }
        format.json { render :show, status: :ok, location: @organizador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organizador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizadors/1 or /organizadors/1.json
  def destroy
    @organizador.destroy!

    respond_to do |format|
      format.html { redirect_to organizadors_url, notice: "Organizador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organizador
      @organizador = Organizador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organizador_params
      params.require(:organizador).permit(:nome, :email, :telefone, :cidade_id)
    end
end
