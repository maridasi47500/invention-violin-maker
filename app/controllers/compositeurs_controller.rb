class CompositeursController < ApplicationController
  before_action :set_compositeur, only: %i[ show edit update destroy ]

  # GET /compositeurs or /compositeurs.json
  def index
    @compositeurs = Compositeur.all
  end

  # GET /compositeurs/1 or /compositeurs/1.json
  def show
  end

  # GET /compositeurs/new
  def new
    @compositeur = Compositeur.new
  end

  # GET /compositeurs/1/edit
  def edit
  end

  # POST /compositeurs or /compositeurs.json
  def create
    @compositeur = Compositeur.new(compositeur_params)

    respond_to do |format|
      if @compositeur.save
        format.html { redirect_to @compositeur, notice: "Compositeur was successfully created." }
        format.json { render :show, status: :created, location: @compositeur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @compositeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compositeurs/1 or /compositeurs/1.json
  def update
    respond_to do |format|
      if @compositeur.update(compositeur_params)
        format.html { redirect_to @compositeur, notice: "Compositeur was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @compositeur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @compositeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compositeurs/1 or /compositeurs/1.json
  def destroy
    @compositeur.destroy!

    respond_to do |format|
      format.html { redirect_to compositeurs_path, notice: "Compositeur was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compositeur
      @compositeur = Compositeur.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def compositeur_params
      params.expect(compositeur: [ :nom, :nationalite, :epoque_id ])
    end
end
