class FireEvidencesController < ApplicationController
  before_action :set_fire_evidence, only: %i[ show edit update destroy ]

  # GET /fire_evidences or /fire_evidences.json
  def index
    @fire_evidences = FireEvidence.all
  end

  # GET /fire_evidences/1 or /fire_evidences/1.json
  def show
  end

  # GET /fire_evidences/new
  def new
    @fire_evidence = FireEvidence.new
  end

  # GET /fire_evidences/1/edit
  def edit
  end

  # POST /fire_evidences or /fire_evidences.json
  def create
    @fire_evidence = FireEvidence.new(fire_evidence_params)

    respond_to do |format|
      if @fire_evidence.save
        format.html { redirect_to @fire_evidence, notice: "Fire evidence was successfully created." }
        format.json { render :show, status: :created, location: @fire_evidence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fire_evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fire_evidences/1 or /fire_evidences/1.json
  def update
    respond_to do |format|
      if @fire_evidence.update(fire_evidence_params)
        format.html { redirect_to @fire_evidence, notice: "Fire evidence was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @fire_evidence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fire_evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fire_evidences/1 or /fire_evidences/1.json
  def destroy
    @fire_evidence.destroy!

    respond_to do |format|
      format.html { redirect_to fire_evidences_path, notice: "Fire evidence was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fire_evidence
      @fire_evidence = FireEvidence.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def fire_evidence_params
      params.expect(fire_evidence: [ :fire_point_id, :evidence_type, :source, :content, :source_url, :confidence ])
    end
end
