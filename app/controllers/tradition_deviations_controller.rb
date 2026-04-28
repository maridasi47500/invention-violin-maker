class TraditionDeviationsController < ApplicationController
  before_action :set_tradition_deviation, only: %i[ show edit update destroy ]

  # GET /tradition_deviations or /tradition_deviations.json
  def index
    @tradition_deviations = TraditionDeviation.all
  end

  # GET /tradition_deviations/1 or /tradition_deviations/1.json
  def show
  end

  # GET /tradition_deviations/new
  def new
    @tradition_deviation = TraditionDeviation.new
  end

  # GET /tradition_deviations/1/edit
  def edit
  end

  # POST /tradition_deviations or /tradition_deviations.json
  def create
    @tradition_deviation = TraditionDeviation.new(tradition_deviation_params)

    respond_to do |format|
      if @tradition_deviation.save
        format.html { redirect_to @tradition_deviation, notice: "Tradition deviation was successfully created." }
        format.json { render :show, status: :created, location: @tradition_deviation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tradition_deviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tradition_deviations/1 or /tradition_deviations/1.json
  def update
    respond_to do |format|
      if @tradition_deviation.update(tradition_deviation_params)
        format.html { redirect_to @tradition_deviation, notice: "Tradition deviation was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @tradition_deviation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tradition_deviation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tradition_deviations/1 or /tradition_deviations/1.json
  def destroy
    @tradition_deviation.destroy!

    respond_to do |format|
      format.html { redirect_to tradition_deviations_path, notice: "Tradition deviation was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tradition_deviation
      @tradition_deviation = TraditionDeviation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tradition_deviation_params
      params.expect(tradition_deviation: [ :fire_point_id, :compositeur_id, :tradition_says, :violinist_does, :reason, :consequence ])
    end
end
