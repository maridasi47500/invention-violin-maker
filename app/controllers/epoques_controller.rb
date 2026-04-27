class EpoquesController < ApplicationController
  before_action :set_epoque, only: %i[ show edit update destroy ]

  # GET /epoques or /epoques.json
  def index
    @epoques = Epoque.all
  end

  # GET /epoques/1 or /epoques/1.json
  def show
  end

  # GET /epoques/new
  def new
    @epoque = Epoque.new
  end

  # GET /epoques/1/edit
  def edit
  end

  # POST /epoques or /epoques.json
  def create
    @epoque = Epoque.new(epoque_params)

    respond_to do |format|
      if @epoque.save
        format.html { redirect_to @epoque, notice: "Epoque was successfully created." }
        format.json { render :show, status: :created, location: @epoque }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @epoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epoques/1 or /epoques/1.json
  def update
    respond_to do |format|
      if @epoque.update(epoque_params)
        format.html { redirect_to @epoque, notice: "Epoque was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @epoque }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @epoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epoques/1 or /epoques/1.json
  def destroy
    @epoque.destroy!

    respond_to do |format|
      format.html { redirect_to epoques_path, notice: "Epoque was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epoque
      @epoque = Epoque.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def epoque_params
      params.expect(epoque: [ :nom ])
    end
end
