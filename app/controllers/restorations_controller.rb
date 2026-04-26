class RestorationsController < ApplicationController
  before_action :set_restoration, only: %i[ show edit update destroy ]

  # GET /restorations or /restorations.json
  def index
    @restorations = Restoration.all
  end

  # GET /restorations/1 or /restorations/1.json
  def show
  end

  # GET /restorations/new
  def new
    @restoration = Restoration.new
  end

  # GET /restorations/1/edit
  def edit
  end

  # POST /restorations or /restorations.json
  def create
    @restoration = Restoration.new(restoration_params)

    respond_to do |format|
      if @restoration.save
        format.html { redirect_to @restoration, notice: "Restoration was successfully created." }
        format.json { render :show, status: :created, location: @restoration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restorations/1 or /restorations/1.json
  def update
    respond_to do |format|
      if @restoration.update(restoration_params)
        format.html { redirect_to @restoration, notice: "Restoration was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @restoration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restorations/1 or /restorations/1.json
  def destroy
    @restoration.destroy!

    respond_to do |format|
      format.html { redirect_to restorations_path, notice: "Restoration was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restoration
      @restoration = Restoration.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def restoration_params
      params.expect(restoration: [ :instrument_id, :description, :work_date ])
    end
end
