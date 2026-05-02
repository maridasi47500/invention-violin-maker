class EpochValidationsController < ApplicationController
  before_action :set_epoch_validation, only: %i[ show edit update destroy ]

  # GET /epoch_validations or /epoch_validations.json
  def index
    @epoch_validations = EpochValidation.all
  end

  # GET /epoch_validations/1 or /epoch_validations/1.json
  def show
  end

  # GET /epoch_validations/new
  def new
    @epoch_validation = EpochValidation.new
  end

  # GET /epoch_validations/1/edit
  def edit
  end

  # POST /epoch_validations or /epoch_validations.json
  def create
    @epoch_validation = EpochValidation.new(epoch_validation_params)

    respond_to do |format|
      if @epoch_validation.save
        format.html { redirect_to @epoch_validation, notice: "Epoch validation was successfully created." }
        format.json { render :show, status: :created, location: @epoch_validation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @epoch_validation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epoch_validations/1 or /epoch_validations/1.json
  def update
    respond_to do |format|
      if @epoch_validation.update(epoch_validation_params)
        format.html { redirect_to @epoch_validation, notice: "Epoch validation was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @epoch_validation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @epoch_validation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epoch_validations/1 or /epoch_validations/1.json
  def destroy
    @epoch_validation.destroy!

    respond_to do |format|
      format.html { redirect_to epoch_validations_path, notice: "Epoch validation was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epoch_validation
      @epoch_validation = EpochValidation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def epoch_validation_params
      params.expect(epoch_validation: [ :epoch_hypothesis_id, :actual_bow_stroke, :matches_hypothesis, :discrepancy ])
    end
end
