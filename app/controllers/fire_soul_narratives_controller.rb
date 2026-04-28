class FireSoulNarrativesController < ApplicationController
  before_action :set_fire_soul_narrative, only: %i[ show edit update destroy ]

  # GET /fire_soul_narratives or /fire_soul_narratives.json
  def index
    @fire_soul_narratives = FireSoulNarrative.all
  end

  # GET /fire_soul_narratives/1 or /fire_soul_narratives/1.json
  def show
  end

  # GET /fire_soul_narratives/new
  def new
    @fire_soul_narrative = FireSoulNarrative.new
  end

  # GET /fire_soul_narratives/1/edit
  def edit
  end

  # POST /fire_soul_narratives or /fire_soul_narratives.json
  def create
    @fire_soul_narrative = FireSoulNarrative.new(fire_soul_narrative_params)

    respond_to do |format|
      if @fire_soul_narrative.save
        format.html { redirect_to @fire_soul_narrative, notice: "Fire soul narrative was successfully created." }
        format.json { render :show, status: :created, location: @fire_soul_narrative }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fire_soul_narrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fire_soul_narratives/1 or /fire_soul_narratives/1.json
  def update
    respond_to do |format|
      if @fire_soul_narrative.update(fire_soul_narrative_params)
        format.html { redirect_to @fire_soul_narrative, notice: "Fire soul narrative was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @fire_soul_narrative }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fire_soul_narrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fire_soul_narratives/1 or /fire_soul_narratives/1.json
  def destroy
    @fire_soul_narrative.destroy!

    respond_to do |format|
      format.html { redirect_to fire_soul_narratives_path, notice: "Fire soul narrative was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fire_soul_narrative
      @fire_soul_narrative = FireSoulNarrative.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def fire_soul_narrative_params
      params.expect(fire_soul_narrative: [ :fire_point_id, :aesthetic_principle, :epoch_fingerprint, :compositeur_intention, :violinist_wisdom ])
    end
end
