class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: %i[ show edit update destroy ]

  # GET /establishments or /establishments.json
  def index
    @establishments = Establishment.all
  end

  # GET /establishments/1 or /establishments/1.json
  def show
  end

  # GET /establishments/new
  def new
    @establishment = Establishment.new
  end

  # GET /establishments/1/edit
  def edit
  end

  # POST /establishments or /establishments.json
  def create
    @establishment = Establishment.new(establishment_params)


    if @establishment.save
      redirect_to establishments_url, notice: "Etablissement créé."
    else
      broadcast_errors @establishment, establishment_params
    end
  end

  # PATCH/PUT /establishments/1 or /establishments/1.json
  def update

      if @establishment.update(establishment_params)
        redirect_to @establishment, notice: "Etablissement mis à jour."
      else
        broadcast_errors @establishment, establishment_params
      end
  end

  # DELETE /establishments/1 or /establishments/1.json
  def destroy
    @establishment.destroy
    redirect_to establishments_url, notice: "Etablissement effacé."

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establishment
      @establishment = Establishment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def establishment_params
      params.require(:establishment).permit(:code, :title, :address, :npa, :locality, :email, :phone1, :phone2, :fax)
    end
end
