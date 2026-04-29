class SessionJeuxController < ApplicationController
  before_action :set_session_jeu, only: %i[ show edit update destroy ]

  # GET /session_jeux or /session_jeux.json
  def index
    @session_jeux = SessionJeu.all
  end

  # GET /session_jeux/1 or /session_jeux/1.json
  def show
  end

  # GET /session_jeux/new
  def new
    @session_jeu = SessionJeu.new
  end

  # GET /session_jeux/1/edit
  def edit
  end

  # POST /session_jeux or /session_jeux.json
  def create
    @session_jeu = SessionJeu.new(session_jeu_params)

    respond_to do |format|
      if @session_jeu.save
        format.html { redirect_to @session_jeu, notice: "Session jeu was successfully created." }
        format.json { render :show, status: :created, location: @session_jeu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @session_jeu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_jeux/1 or /session_jeux/1.json
  def update
    respond_to do |format|
      if @session_jeu.update(session_jeu_params)
        format.html { redirect_to @session_jeu, notice: "Session jeu was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @session_jeu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @session_jeu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_jeux/1 or /session_jeux/1.json
  def destroy
    @session_jeu.destroy!

    respond_to do |format|
      format.html { redirect_to session_jeux_path, notice: "Session jeu was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_jeu
      @session_jeu = SessionJeu.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def session_jeu_params
      params.expect(session_jeu: [ :instrument_id, :date_session, :heure_debut, :duree_minutes, :pieces_jouees, :notes_session, :ressenti_epoque, :epoque_id, :reflexion_personnelle ])
    end
end
