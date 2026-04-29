class LutheriesController < ApplicationController
  before_action :set_luthery, only: %i[ show edit update destroy ]

  # GET /lutheries or /lutheries.json
  def index
    @lutheries = Lutherie.all
  end

  # GET /lutheries/1 or /lutheries/1.json
  def show
  end

  # GET /lutheries/new
  def new
    @luthery = Lutherie.new
  end

  # GET /lutheries/1/edit
  def edit
  end

  # POST /lutheries or /lutheries.json
  def create
    @luthery = Lutherie.new(luthery_params)

    respond_to do |format|
      if @luthery.save
        format.html { redirect_to @luthery, notice: "Lutherie was successfully created." }
        format.json { render :show, status: :created, location: @luthery }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @luthery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lutheries/1 or /lutheries/1.json
  def update
    respond_to do |format|
      if @luthery.update(luthery_params)
        format.html { redirect_to @luthery, notice: "Lutherie was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @luthery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @luthery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lutheries/1 or /lutheries/1.json
  def destroy
    @luthery.destroy!

    respond_to do |format|
      format.html { redirect_to lutheries_path, notice: "Lutherie was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luthery
      @luthery = Lutherie.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def luthery_params
      params.expect(luthery: [ :nom, :ville, :region, :pays, :type_lutherie, :description_typique, :materiel_caracteristique, :periode_fondation_debut, :periode_fondation_fin, :epoque_id, :disponible_achat_neuf, :disponible_occasion, :prix_approximatif_eur, :plateforme_achat, :produit_touristique, :heritage_culturel ])
    end
end
