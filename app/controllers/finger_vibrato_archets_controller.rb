class FingerVibratoArchetsController < ApplicationController
  before_action :set_finger_vibrato_archet, only: %i[ show edit update destroy ]

  # GET /finger_vibrato_archets or /finger_vibrato_archets.json
  def index
    @finger_vibrato_archets = FingerVibratoArchet.all
  end

  # GET /finger_vibrato_archets/1 or /finger_vibrato_archets/1.json
  def show
  end

  # GET /finger_vibrato_archets/new
  def new
    @finger_vibrato_archet = FingerVibratoArchet.new
  end

  # GET /finger_vibrato_archets/1/edit
  def edit
  end

  # POST /finger_vibrato_archets or /finger_vibrato_archets.json
  def create
    @finger_vibrato_archet = FingerVibratoArchet.new(finger_vibrato_archet_params)

    respond_to do |format|
      if @finger_vibrato_archet.save
        format.html { redirect_to @finger_vibrato_archet, notice: "Finger vibrato archet was successfully created." }
        format.json { render :show, status: :created, location: @finger_vibrato_archet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @finger_vibrato_archet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finger_vibrato_archets/1 or /finger_vibrato_archets/1.json
  def update
    respond_to do |format|
      if @finger_vibrato_archet.update(finger_vibrato_archet_params)
        format.html { redirect_to @finger_vibrato_archet, notice: "Finger vibrato archet was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @finger_vibrato_archet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @finger_vibrato_archet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finger_vibrato_archets/1 or /finger_vibrato_archets/1.json
  def destroy
    @finger_vibrato_archet.destroy!

    respond_to do |format|
      format.html { redirect_to finger_vibrato_archets_path, notice: "Finger vibrato archet was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finger_vibrato_archet
      @finger_vibrato_archet = FingerVibratoArchet.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def finger_vibrato_archet_params
      params.expect(finger_vibrato_archet: [ :body_mechanic_id, :phalange_oscillation, :vibrato_natural, :oscillation_frequency_hz, :nuance_quality, :sound_flat_without_vibrato, :sound_alive_with_vibrato ])
    end
end
