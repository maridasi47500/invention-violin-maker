class CordesController < ApplicationController
  before_action :set_corde, only: %i[ show edit update destroy ]

  # GET /cordes or /cordes.json
  def index
    @cordes = Corde.all
  end

  # GET /cordes/1 or /cordes/1.json
  def show
  end

  # GET /cordes/new
  def new
    @corde = Corde.new
  end

  # GET /cordes/1/edit
  def edit
  end

  # POST /cordes or /cordes.json
  def create
    @corde = Corde.new(corde_params)

    respond_to do |format|
      if @corde.save
        format.html { redirect_to @corde, notice: "Corde was successfully created." }
        format.json { render :show, status: :created, location: @corde }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @corde.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cordes/1 or /cordes/1.json
  def update
    respond_to do |format|
      if @corde.update(corde_params)
        format.html { redirect_to @corde, notice: "Corde was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @corde }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @corde.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cordes/1 or /cordes/1.json
  def destroy
    @corde.destroy!

    respond_to do |format|
      format.html { redirect_to cordes_path, notice: "Corde was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corde
      @corde = Corde.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def corde_params
      params.expect(corde: [ :nom ])
    end
end
