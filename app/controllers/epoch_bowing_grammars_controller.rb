class EpochBowingGrammarsController < ApplicationController
  before_action :set_epoch_bowing_grammar, only: %i[ show edit update destroy ]

  # GET /epoch_bowing_grammars or /epoch_bowing_grammars.json
  def index
    @epoch_bowing_grammars = EpochBowingGrammar.all
  end

  # GET /epoch_bowing_grammars/1 or /epoch_bowing_grammars/1.json
  def show
  end

  # GET /epoch_bowing_grammars/new
  def new
    @epoch_bowing_grammar = EpochBowingGrammar.new
  end

  # GET /epoch_bowing_grammars/1/edit
  def edit
  end

  # POST /epoch_bowing_grammars or /epoch_bowing_grammars.json
  def create
    @epoch_bowing_grammar = EpochBowingGrammar.new(epoch_bowing_grammar_params)

    respond_to do |format|
      if @epoch_bowing_grammar.save
        format.html { redirect_to @epoch_bowing_grammar, notice: "Epoch bowing grammar was successfully created." }
        format.json { render :show, status: :created, location: @epoch_bowing_grammar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @epoch_bowing_grammar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epoch_bowing_grammars/1 or /epoch_bowing_grammars/1.json
  def update
    respond_to do |format|
      if @epoch_bowing_grammar.update(epoch_bowing_grammar_params)
        format.html { redirect_to @epoch_bowing_grammar, notice: "Epoch bowing grammar was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @epoch_bowing_grammar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @epoch_bowing_grammar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epoch_bowing_grammars/1 or /epoch_bowing_grammars/1.json
  def destroy
    @epoch_bowing_grammar.destroy!

    respond_to do |format|
      format.html { redirect_to epoch_bowing_grammars_path, notice: "Epoch bowing grammar was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epoch_bowing_grammar
      @epoch_bowing_grammar = EpochBowingGrammar.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def epoch_bowing_grammar_params
      params.expect(epoch_bowing_grammar: [ :epoch, :bow_stroke, :context, :likelihood ])
    end
end
