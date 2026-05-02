class DiscoveredMisreadingsController < ApplicationController
  before_action :set_discovered_misreading, only: %i[ show edit update destroy ]

  # GET /discovered_misreadings or /discovered_misreadings.json
  def index
    @discovered_misreadings = DiscoveredMisreading.all
  end

  # GET /discovered_misreadings/1 or /discovered_misreadings/1.json
  def show
  end

  # GET /discovered_misreadings/new
  def new
    @discovered_misreading = DiscoveredMisreading.new
  end

  # GET /discovered_misreadings/1/edit
  def edit
  end

  # POST /discovered_misreadings or /discovered_misreadings.json
  def create
    @discovered_misreading = DiscoveredMisreading.new(discovered_misreading_params)

    respond_to do |format|
      if @discovered_misreading.save
        format.html { redirect_to @discovered_misreading, notice: "Discovered misreading was successfully created." }
        format.json { render :show, status: :created, location: @discovered_misreading }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @discovered_misreading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discovered_misreadings/1 or /discovered_misreadings/1.json
  def update
    respond_to do |format|
      if @discovered_misreading.update(discovered_misreading_params)
        format.html { redirect_to @discovered_misreading, notice: "Discovered misreading was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @discovered_misreading }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @discovered_misreading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discovered_misreadings/1 or /discovered_misreadings/1.json
  def destroy
    @discovered_misreading.destroy!

    respond_to do |format|
      format.html { redirect_to discovered_misreadings_path, notice: "Discovered misreading was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discovered_misreading
      @discovered_misreading = DiscoveredMisreading.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def discovered_misreading_params
      params.expect(discovered_misreading: [ :epoch_hypothesis_id, :from_clue, :epoch_id, :lesson ])
    end
end
