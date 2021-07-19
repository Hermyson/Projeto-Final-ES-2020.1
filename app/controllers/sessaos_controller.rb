class SessaosController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_sessao, only: %i[ show edit update destroy ]

  # GET /sessaos or /sessaos.json
  def index
    @sessaos = Sessao.all
  end

  # GET /sessaos/1 or /sessaos/1.json
  def show
  end

  # GET /sessaos/new
  def new
    @sessao = Sessao.new
    psicologos_for_select
    pacientes_for_select
  end

  # GET /sessaos/1/edit
  def edit
    psicologos_for_select
    pacientes_for_select
  end

  # POST /sessaos or /sessaos.json
  def create
    @sessao = Sessao.new(sessao_params)
    psicologos_for_select
    pacientes_for_select
    respond_to do |format|
      @sessao.user = current_user
      if @sessao.save
        format.html { redirect_to @sessao, notice: "Sessao was successfully created." }
        format.json { render :show, status: :created, location: @sessao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sessao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessaos/1 or /sessaos/1.json
  def update
    respond_to do |format|
      if @sessao.update(sessao_params)
        format.html { redirect_to @sessao, notice: "Sessao was successfully updated." }
        format.json { render :show, status: :ok, location: @sessao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sessao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessaos/1 or /sessaos/1.json
  def destroy
    @sessao.destroy
    respond_to do |format|
      format.html { redirect_to sessaos_url, notice: "Sessao was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def psicologos_for_select
    @psicologo_psicologos_for_select = Psicologo.all
  end
  def pacientes_for_select
    @paciente_pacientes_for_select = Paciente.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sessao
      @sessao = Sessao.where("id = ?", params[:id]).first
    end
    # Only allow a list of trusted parameters through.
    def sessao_params
      params.require(:sessao).permit(:data, :hora, :user_id, :paciente_id, :psicologo_id)
    end
end
