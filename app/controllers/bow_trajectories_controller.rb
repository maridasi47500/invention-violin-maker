class BowTrajectoriesController < ApplicationController
  before_action :set_bow_trajectory, only: %i[ show edit update destroy ]

  # GET /bow_trajectories or /bow_trajectories.json
  def index
    @bow_trajectories = BowTrajectory.all
  end

  # GET /bow_trajectories/1 or /bow_trajectories/1.json
  def show
  end

  # GET /bow_trajectories/new
  def new
    @bow_trajectory = BowTrajectory.new
  end

  # GET /bow_trajectories/1/edit
  def edit
  end

  # POST /bow_trajectories or /bow_trajectories.json
  def create
    @bow_trajectory = BowTrajectory.new(bow_trajectory_params)

    respond_to do |format|
      if @bow_trajectory.save
        format.html { redirect_to @bow_trajectory, notice: "Bow trajectory was successfully created." }
        format.json { render :show, status: :created, location: @bow_trajectory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bow_trajectory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bow_trajectories/1 or /bow_trajectories/1.json
  def update
    respond_to do |format|
      if @bow_trajectory.update(bow_trajectory_params)
        format.html { redirect_to @bow_trajectory, notice: "Bow trajectory was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @bow_trajectory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bow_trajectory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bow_trajectories/1 or /bow_trajectories/1.json
  def destroy
    @bow_trajectory.destroy!

    respond_to do |format|
      format.html { redirect_to bow_trajectories_path, notice: "Bow trajectory was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bow_trajectory
      @bow_trajectory = BowTrajectory.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bow_trajectory_params
      params.expect(bow_trajectory: [ :bow_stroke_type, :friction_trajectory, :empty_trajectory, :air_time_percentage, :resonance_quality, :tension_buildup ])
    end
end
