class CoupArchetsController < ApplicationController
  before_action :set_coup_archet, only: %i[ show edit update destroy ]

  # GET /coup_archets or /coup_archets.json
  def index
    @coup_archets = CoupArchet.all
  end

  # GET /coup_archets/1 or /coup_archets/1.json
  def show
  end

  # GET /coup_archets/new
  def new
    @coup_archet = CoupArchet.new
  end

  # GET /coup_archets/1/edit
  def edit
  end

  # POST /coup_archets or /coup_archets.json
  def create
    @coup_archet = CoupArchet.new(coup_archet_params)

    respond_to do |format|
      if @coup_archet.save
        format.html { redirect_to @coup_archet, notice: "Coup archet was successfully created." }
        format.json { render :show, status: :created, location: @coup_archet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coup_archet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coup_archets/1 or /coup_archets/1.json
  def update
    respond_to do |format|
      if @coup_archet.update(coup_archet_params)
        format.html { redirect_to @coup_archet, notice: "Coup archet was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @coup_archet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coup_archet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coup_archets/1 or /coup_archets/1.json
  def destroy
    @coup_archet.destroy!

    respond_to do |format|
      format.html { redirect_to coup_archets_path, notice: "Coup archet was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coup_archet
      @coup_archet = CoupArchet.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def coup_archet_params
      params.expect(coup_archet: [ :nom, :technique, :rythme_exact, :vitesse_musicale, :longueur_archet, :pression, :vitesse_archet, :point_contact, :angle_archet, :type_attaque, :dynamique_typique, :description, :epoque_id, :puce_category_id, :style_musical_id, :caractere_id ])
    end
end
