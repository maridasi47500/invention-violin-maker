class ElbowBreathingsController < ApplicationController
  before_action :set_elbow_breathing, only: %i[ show edit update destroy ]

  # GET /elbow_breathings or /elbow_breathings.json
  def index
    @elbow_breathings = ElbowBreathing.all
  end

  # GET /elbow_breathings/1 or /elbow_breathings/1.json
  def show
  end

  # GET /elbow_breathings/new
  def new
    @elbow_breathing = ElbowBreathing.new
  end

  # GET /elbow_breathings/1/edit
  def edit
  end

  # POST /elbow_breathings or /elbow_breathings.json
  def create
    @elbow_breathing = ElbowBreathing.new(elbow_breathing_params)

    respond_to do |format|
      if @elbow_breathing.save
        format.html { redirect_to @elbow_breathing, notice: "Elbow breathing was successfully created." }
        format.json { render :show, status: :created, location: @elbow_breathing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elbow_breathing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elbow_breathings/1 or /elbow_breathings/1.json
  def update
    respond_to do |format|
      if @elbow_breathing.update(elbow_breathing_params)
        format.html { redirect_to @elbow_breathing, notice: "Elbow breathing was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @elbow_breathing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elbow_breathing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elbow_breathings/1 or /elbow_breathings/1.json
  def destroy
    @elbow_breathing.destroy!

    respond_to do |format|
      format.html { redirect_to elbow_breathings_path, notice: "Elbow breathing was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elbow_breathing
      @elbow_breathing = ElbowBreathing.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def elbow_breathing_params
      params.expect(elbow_breathing: [ :body_mechanic_id, :micro_release_frequency, :breathing_present, :rigidity_level, :sound_quality_rigid, :sound_quality_breathing ])
    end
end
