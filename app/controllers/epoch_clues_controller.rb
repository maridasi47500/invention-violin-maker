class EpochCluesController < ApplicationController
  before_action :set_epoch_clue, only: %i[ show edit update destroy ]

  # GET /epoch_clues or /epoch_clues.json
  def index
    @epoch_clues = EpochClue.all
  end

  # GET /epoch_clues/1 or /epoch_clues/1.json
  def show
  end

  # GET /epoch_clues/new
  def new
    @epoch_clue = EpochClue.new
  end

  # GET /epoch_clues/1/edit
  def edit
  end

  # POST /epoch_clues or /epoch_clues.json
  def create
    @epoch_clue = EpochClue.new(epoch_clue_params)

    respond_to do |format|
      if @epoch_clue.save
        format.html { redirect_to @epoch_clue, notice: "Epoch clue was successfully created." }
        format.json { render :show, status: :created, location: @epoch_clue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @epoch_clue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epoch_clues/1 or /epoch_clues/1.json
  def update
    respond_to do |format|
      if @epoch_clue.update(epoch_clue_params)
        format.html { redirect_to @epoch_clue, notice: "Epoch clue was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @epoch_clue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @epoch_clue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epoch_clues/1 or /epoch_clues/1.json
  def destroy
    @epoch_clue.destroy!

    respond_to do |format|
      format.html { redirect_to epoch_clues_path, notice: "Epoch clue was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epoch_clue
      @epoch_clue = EpochClue.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def epoch_clue_params
      params.expect(epoch_clue: [ :fire_point_id, :clue_type, :value, :epoch, :weight ])
    end
end
