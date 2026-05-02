class FirePointsController < ApplicationController
  before_action :set_fire_point, only: %i[ show edit update destroy ]

  # GET /fire_points or /fire_points.json
  def index
    @fire_points = FirePoint.all
  end

  # GET /fire_points/1 or /fire_points/1.json
  def show
  end

  # GET /fire_points/new
  def new
    @fire_point = FirePoint.new
  end

  # GET /fire_points/1/edit
  def edit
  end

  # POST /fire_points or /fire_points.json
  def create
    @fire_point = FirePoint.new(fire_point_params)

    respond_to do |format|
      if @fire_point.save
        format.html { redirect_to @fire_point, notice: "Fire point was successfully created." }
        format.json { render :show, status: :created, location: @fire_point }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fire_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fire_points/1 or /fire_points/1.json
  def update
    respond_to do |format|
      if @fire_point.update(fire_point_params)
        format.html { redirect_to @fire_point, notice: "Fire point was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @fire_point }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fire_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fire_points/1 or /fire_points/1.json
  def destroy
    @fire_point.destroy!

    respond_to do |format|
      format.html { redirect_to fire_points_path, notice: "Fire point was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fire_point
      @fire_point = FirePoint.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def fire_point_params
      params.expect(fire_point: [ :string_spirit_id, :coup_archet_id, :oeuvre_id,:valid_epochs, :invalid_epochs, :cross_piece_validation, :was_false_positive, :false_positive_reason ])
    end
end
