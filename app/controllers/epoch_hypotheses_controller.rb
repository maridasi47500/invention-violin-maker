class EpochHypothesesController < ApplicationController
  before_action :set_epoch_hypothesis, only: %i[ show edit update destroy ]

  # GET /epoch_hypotheses or /epoch_hypotheses.json
  def index
    @epoch_hypotheses = EpochHypothesis.all
  end

  # GET /epoch_hypotheses/1 or /epoch_hypotheses/1.json
  def show
  end

  # GET /epoch_hypotheses/new
  def new
    @epoch_hypothesis = EpochHypothesis.new
  end

  # GET /epoch_hypotheses/1/edit
  def edit
  end

  # POST /epoch_hypotheses or /epoch_hypotheses.json
  def create
    @epoch_hypothesis = EpochHypothesis.new(epoch_hypothesis_params)

    respond_to do |format|
      if @epoch_hypothesis.save
        format.html { redirect_to @epoch_hypothesis, notice: "Epoch hypothesis was successfully created." }
        format.json { render :show, status: :created, location: @epoch_hypothesis }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @epoch_hypothesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epoch_hypotheses/1 or /epoch_hypotheses/1.json
  def update
    respond_to do |format|
      if @epoch_hypothesis.update(epoch_hypothesis_params)
        format.html { redirect_to @epoch_hypothesis, notice: "Epoch hypothesis was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @epoch_hypothesis }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @epoch_hypothesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epoch_hypotheses/1 or /epoch_hypotheses/1.json
  def destroy
    @epoch_hypothesis.destroy!

    respond_to do |format|
      format.html { redirect_to epoch_hypotheses_path, notice: "Epoch hypothesis was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epoch_hypothesis
      @epoch_hypothesis = EpochHypothesis.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def epoch_hypothesis_params
      params.expect(epoch_hypothesis: [ :experience_id, :epoch_detected, :bow_stroke_hypothesis, :confidence_percent, :reason ])
    end
end
