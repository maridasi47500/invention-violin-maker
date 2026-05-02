class BodyMechanicsController < ApplicationController
  before_action :set_body_mechanic, only: %i[ show edit update destroy ]

  # GET /body_mechanics or /body_mechanics.json
  def index
    @body_mechanics = BodyMechanic.all
  end

  # GET /body_mechanics/1 or /body_mechanics/1.json
  def show
  end

  # GET /body_mechanics/new
  def new
    @body_mechanic = BodyMechanic.new
  end

  # GET /body_mechanics/1/edit
  def edit
  end

  # POST /body_mechanics or /body_mechanics.json
  def create
    @body_mechanic = BodyMechanic.new(body_mechanic_params)

    respond_to do |format|
      if @body_mechanic.save
        format.html { redirect_to @body_mechanic, notice: "Body mechanic was successfully created." }
        format.json { render :show, status: :created, location: @body_mechanic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @body_mechanic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /body_mechanics/1 or /body_mechanics/1.json
  def update
    respond_to do |format|
      if @body_mechanic.update(body_mechanic_params)
        format.html { redirect_to @body_mechanic, notice: "Body mechanic was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @body_mechanic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @body_mechanic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /body_mechanics/1 or /body_mechanics/1.json
  def destroy
    @body_mechanic.destroy!

    respond_to do |format|
      format.html { redirect_to body_mechanics_path, notice: "Body mechanic was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body_mechanic
      @body_mechanic = BodyMechanic.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def body_mechanic_params
      params.expect(body_mechanic: [ :elbow_angle_degrees, :elbow_state, :wrist_angle_state, :wrist_extension_degrees, :index_phalange_state, :thumb_position, :shoulder_position, :violin_angle_degrees, :back_posture, :chin_pressure, :bow_parallelism_check, :bow_deviation_notes ])
    end
end
