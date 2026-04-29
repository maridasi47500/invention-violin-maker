class EnregistrementMusicauxController < ApplicationController
  before_action :set_enregistrement_musical, only: %i[ show edit update destroy ]

  # GET /enregistrement_musicaux or /enregistrement_musicaux.json
  def index
    @enregistrement_musicaux = EnregistrementMusical.all
  end

  # GET /enregistrement_musicaux/1 or /enregistrement_musicaux/1.json
  def show
  end

  # GET /enregistrement_musicaux/new
  def new
    @enregistrement_musical = EnregistrementMusical.new
  end

  # GET /enregistrement_musicaux/1/edit
  def edit
  end

  # POST /enregistrement_musicaux or /enregistrement_musicaux.json
  def create
    @enregistrement_musical = EnregistrementMusical.new(enregistrement_musical_params)

    respond_to do |format|
      if @enregistrement_musical.save
        format.html { redirect_to @enregistrement_musical, notice: "Enregistrement musical was successfully created." }
        format.json { render :show, status: :created, location: @enregistrement_musical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enregistrement_musical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enregistrement_musicaux/1 or /enregistrement_musicaux/1.json
  def update
    respond_to do |format|
      if @enregistrement_musical.update(enregistrement_musical_params)
        format.html { redirect_to @enregistrement_musical, notice: "Enregistrement musical was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @enregistrement_musical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enregistrement_musical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enregistrement_musicaux/1 or /enregistrement_musicaux/1.json
  def destroy
    @enregistrement_musical.destroy!

    respond_to do |format|
      format.html { redirect_to enregistrement_musicaux_path, notice: "Enregistrement musical was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enregistrement_musical
      @enregistrement_musical = EnregistrementMusical.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def enregistrement_musical_params
      params.expect(enregistrement_musical: [ :oeuvre_id, :violoniste_id, :date_enregistrement, :format_media, :label_editeur, :url_streaming, :lutherie_violon_id, :lutherie_archet_id, :notes_lutherie, :source_achat, :date_achat_ou_decouverte, :epoque_compositeur_id, :epoque_enregistrement_id ])
    end
end
