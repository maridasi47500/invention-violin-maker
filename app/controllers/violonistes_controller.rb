class ViolonistesController < ApplicationController
  before_action :set_violoniste, only: %i[ show edit update destroy ]

  # GET /violonistes or /violonistes.json
  def index
    @violonistes = Violoniste.all
  end

  # GET /violonistes/1 or /violonistes/1.json
  def show
  end

  # GET /violonistes/new
  def new
    @violoniste = Violoniste.new
  end

  # GET /violonistes/1/edit
  def edit
  end

  # POST /violonistes or /violonistes.json
  def create
    @violoniste = Violoniste.new(violoniste_params)

    respond_to do |format|
      if @violoniste.save
        format.html { redirect_to @violoniste, notice: "Violoniste was successfully created." }
        format.json { render :show, status: :created, location: @violoniste }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @violoniste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /violonistes/1 or /violonistes/1.json
  def update
    respond_to do |format|
      if @violoniste.update(violoniste_params)
        format.html { redirect_to @violoniste, notice: "Violoniste was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @violoniste }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @violoniste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violonistes/1 or /violonistes/1.json
  def destroy
    @violoniste.destroy!

    respond_to do |format|
      format.html { redirect_to violonistes_path, notice: "Violoniste was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violoniste
      @violoniste = Violoniste.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def violoniste_params
      params.expect(violoniste: [ :nom ])
    end
end
