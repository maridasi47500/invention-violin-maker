class ExplorationsController < ApplicationController
  before_action :set_exploration, only: %i[ show edit update destroy ]

  # GET /explorations or /explorations.json
  def index
    @explorations = Exploration.all
  end

  # GET /explorations/1 or /explorations/1.json
  def show
  end

  # GET /explorations/new
  def new
    @exploration = Exploration.new
  end

  # GET /explorations/1/edit
  def edit
  end

  # POST /explorations or /explorations.json
  def create
    @exploration = Exploration.new(exploration_params)

    respond_to do |format|
      if @exploration.save
        format.html { redirect_to @exploration, notice: "Exploration was successfully created." }
        format.json { render :show, status: :created, location: @exploration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exploration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /explorations/1 or /explorations/1.json
  def update
    respond_to do |format|
      if @exploration.update(exploration_params)
        format.html { redirect_to @exploration, notice: "Exploration was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @exploration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exploration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explorations/1 or /explorations/1.json
  def destroy
    @exploration.destroy!

    respond_to do |format|
      format.html { redirect_to explorations_path, notice: "Exploration was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exploration
      @exploration = Exploration.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def exploration_params
      params.expect(exploration: [ :violinist_name, :fire_point_id, :notes, :lilypond_reponse, :audio_reponse_url ])
    end
end
