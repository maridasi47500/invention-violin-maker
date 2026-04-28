class JournalLabosController < ApplicationController
  before_action :set_journal_labo, only: %i[ show edit update destroy ]

  # GET /journal_labos or /journal_labos.json
  def index
    @journal_labos = JournalLabo.all
  end

  # GET /journal_labos/1 or /journal_labos/1.json
  def show
  end

  # GET /journal_labos/new
  def new
    @journal_labo = JournalLabo.new(date: Date.today)
  end

  # GET /journal_labos/1/edit
  def edit
  end

  # POST /journal_labos or /journal_labos.json
  def create
    @journal_labo = JournalLabo.new(journal_labo_params)

    respond_to do |format|
      if @journal_labo.save
        format.html { redirect_to @journal_labo, notice: "Journal labo was successfully created." }
        format.json { render :show, status: :created, location: @journal_labo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @journal_labo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journal_labos/1 or /journal_labos/1.json
  def update
    respond_to do |format|
      if @journal_labo.update(journal_labo_params)
        format.html { redirect_to @journal_labo, notice: "Journal labo was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @journal_labo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @journal_labo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journal_labos/1 or /journal_labos/1.json
  def destroy
    @journal_labo.destroy!

    respond_to do |format|
      format.html { redirect_to journal_labos_path, notice: "Journal labo was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal_labo
      @journal_labo = JournalLabo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def journal_labo_params
      params.expect(journal_labo: [ :date, :oeuvre_id, :mesure ])
    end
end
