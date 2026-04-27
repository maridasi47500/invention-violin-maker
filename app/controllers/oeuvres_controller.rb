class OeuvresController < ApplicationController
  before_action :set_oeuvre, only: %i[ show edit update destroy ]

  # GET /oeuvres or /oeuvres.json
  def index
    @oeuvres = Oeuvre.all
  end

  # GET /oeuvres/1 or /oeuvres/1.json
  def show
  end

  # GET /oeuvres/new
  def new
    @oeuvre = Oeuvre.new
  end

  # GET /oeuvres/1/edit
  def edit
  end

  # POST /oeuvres or /oeuvres.json
  def create
    @oeuvre = Oeuvre.new(oeuvre_params)

    respond_to do |format|
      if @oeuvre.save
        format.html { redirect_to @oeuvre, notice: "Oeuvre was successfully created." }
        format.json { render :show, status: :created, location: @oeuvre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oeuvre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oeuvres/1 or /oeuvres/1.json
  def update
    respond_to do |format|
      if @oeuvre.update(oeuvre_params)
        format.html { redirect_to @oeuvre, notice: "Oeuvre was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @oeuvre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oeuvre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oeuvres/1 or /oeuvres/1.json
  def destroy
    @oeuvre.destroy!

    respond_to do |format|
      format.html { redirect_to oeuvres_path, notice: "Oeuvre was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oeuvre
      @oeuvre = Oeuvre.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def oeuvre_params
      params.expect(oeuvre: [ :titre, :annee, :compositeur_id, :style_musical_id ])
    end
end
