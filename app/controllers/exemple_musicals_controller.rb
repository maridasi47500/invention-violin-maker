class ExempleMusicalsController < ApplicationController
  before_action :set_exemple_musical, only: %i[ show edit update destroy ]

  # GET /exemple_musicals or /exemple_musicals.json
  def index
    @exemple_musicals = ExempleMusical.all
  end

  # GET /exemple_musicals/1 or /exemple_musicals/1.json
  def show
  end

  # GET /exemple_musicals/new
  def new
    @exemple_musical = ExempleMusical.new
  end

  # GET /exemple_musicals/1/edit
  def edit
  end

  # POST /exemple_musicals or /exemple_musicals.json
  def create
    @exemple_musical = ExempleMusical.new(exemple_musical_params)

    respond_to do |format|
      if @exemple_musical.save
        format.html { redirect_to @exemple_musical, notice: "Exemple musical was successfully created." }
        format.json { render :show, status: :created, location: @exemple_musical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exemple_musical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exemple_musicals/1 or /exemple_musicals/1.json
  def update
    respond_to do |format|
      if @exemple_musical.update(exemple_musical_params)
        format.html { redirect_to @exemple_musical, notice: "Exemple musical was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @exemple_musical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exemple_musical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exemple_musicals/1 or /exemple_musicals/1.json
  def destroy
    @exemple_musical.destroy!

    respond_to do |format|
      format.html { redirect_to exemple_musicals_path, notice: "Exemple musical was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exemple_musical
      @exemple_musical = ExempleMusical.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def exemple_musical_params
      params.expect(exemple_musical: [ :oeuvre_id, :coup_archet_id, :description, :mesure ])
    end
end
