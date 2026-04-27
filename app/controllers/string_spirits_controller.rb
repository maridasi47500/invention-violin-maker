class StringSpiritsController < ApplicationController
  before_action :set_string_spirit, only: %i[ show edit update destroy ]

  # GET /string_spirits or /string_spirits.json
  def index
    @string_spirits = StringSpirit.all
  end

  # GET /string_spirits/1 or /string_spirits/1.json
  def show
  end

  # GET /string_spirits/new
  def new
    @string_spirit = StringSpirit.new
  end

  # GET /string_spirits/1/edit
  def edit
  end

  # POST /string_spirits or /string_spirits.json
  def create
    @string_spirit = StringSpirit.new(string_spirit_params)

    respond_to do |format|
      if @string_spirit.save
        format.html { redirect_to @string_spirit, notice: "String spirit was successfully created." }
        format.json { render :show, status: :created, location: @string_spirit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @string_spirit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /string_spirits/1 or /string_spirits/1.json
  def update
    respond_to do |format|
      if @string_spirit.update(string_spirit_params)
        format.html { redirect_to @string_spirit, notice: "String spirit was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @string_spirit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @string_spirit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /string_spirits/1 or /string_spirits/1.json
  def destroy
    @string_spirit.destroy!

    respond_to do |format|
      format.html { redirect_to string_spirits_path, notice: "String spirit was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_string_spirit
      @string_spirit = StringSpirit.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def string_spirit_params
      params.expect(string_spirit: [ :corde_id, :epoque_id, :compositeur_id ])
    end
end
