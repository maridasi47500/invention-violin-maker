class CoupArchetEpoquesController < ApplicationController
  before_action :set_coup_archet_epoque, only: %i[ show edit update destroy ]

  # GET /coup_archet_epoques or /coup_archet_epoques.json
  def index
    @coup_archet_epoques = CoupArchetEpoque.all
  end

  # GET /coup_archet_epoques/1 or /coup_archet_epoques/1.json
  def show
  end

  # GET /coup_archet_epoques/new
  def new
    @coup_archet_epoque = CoupArchetEpoque.new
  end

  # GET /coup_archet_epoques/1/edit
  def edit
  end

  # POST /coup_archet_epoques or /coup_archet_epoques.json
  def create
    @coup_archet_epoque = CoupArchetEpoque.new(coup_archet_epoque_params)

    respond_to do |format|
      if @coup_archet_epoque.save
        format.html { redirect_to @coup_archet_epoque, notice: "Coup archet epoque was successfully created." }
        format.json { render :show, status: :created, location: @coup_archet_epoque }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coup_archet_epoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coup_archet_epoques/1 or /coup_archet_epoques/1.json
  def update
    respond_to do |format|
      if @coup_archet_epoque.update(coup_archet_epoque_params)
        format.html { redirect_to @coup_archet_epoque, notice: "Coup archet epoque was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @coup_archet_epoque }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coup_archet_epoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coup_archet_epoques/1 or /coup_archet_epoques/1.json
  def destroy
    @coup_archet_epoque.destroy!

    respond_to do |format|
      format.html { redirect_to coup_archet_epoques_path, notice: "Coup archet epoque was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coup_archet_epoque
      @coup_archet_epoque = CoupArchetEpoque.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def coup_archet_epoque_params
      params.expect(coup_archet_epoque: [ :coup_archet_id, :epoque_id, :description_epoque, :caracteristiques_typiques, :evolution_depuis_precedent, :raison_mutation, :exemples_references, :ordre_chronologique_id, :is_primary ])
    end
end
