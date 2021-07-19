class PsicologosController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_psicologo, only: %i[ show edit update destroy ]

  # GET /psicologos or /psicologos.json
  def index
    @psicologos = Psicologo.all
      
  end


  # GET /psicologos/1 or /psicologos/1.json
  def show
  end

  # GET /psicologos/new
  def new
    @psicologo = Psicologo.new


  end

  # GET /psicologos/1/edit
  def edit

  end

  # POST /psicologos or /psicologos.json
  def create
    #@psicologo = Psicologo.new(psicologo_params)
    @psicologo = current_user.psicologos.build(psicologo_params)
    
    respond_to do |format|
      if @psicologo.save

        format.html { redirect_to @psicologo, notice: "Psicologo was successfully created." }
        format.json { render :show, status: :created, location: @psicologo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @psicologo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /psicologos/1 or /psicologos/1.json
  def update
    respond_to do |format|
      if @psicologo.update(psicologo_params)
        format.html { redirect_to @psicologo, notice: "Psicologo was successfully updated." }
        format.json { render :show, status: :ok, location: @psicologo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @psicologo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psicologos/1 or /psicologos/1.json
  def destroy
    @psicologo.destroy
    respond_to do |format|
      format.html { redirect_to psicologos_url, notice: "Psicologo was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psicologo
      @psicologo = Psicologo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def psicologo_params
      params.require(:psicologo).permit(:crp, :nome)
    end
end
