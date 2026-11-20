class StyleMusicalsController < ApplicationController
  before_action :set_style_musical, only: %i[ show edit update destroy ]

  # GET /style_musicals or /style_musicals.json
  def index
    @style_musicals = StyleMusical.all
  end

  # GET /style_musicals/1 or /style_musicals/1.json
  def show
  end

  # GET /style_musicals/new
  def new
    @style_musical = StyleMusical.new
  end

  # GET /style_musicals/1/edit
  def edit
  end

  # POST /style_musicals or /style_musicals.json
  def create
    @style_musical = StyleMusical.new(style_musical_params)

    respond_to do |format|
      if @style_musical.save
        format.html { redirect_to @style_musical, notice: "Style musical was successfully created." }
        format.json { render :show, status: :created, location: @style_musical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @style_musical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /style_musicals/1 or /style_musicals/1.json
  def update
    respond_to do |format|
      if @style_musical.update(style_musical_params)
        format.html { redirect_to @style_musical, notice: "Style musical was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @style_musical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @style_musical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /style_musicals/1 or /style_musicals/1.json
  def destroy
    @style_musical.destroy!

    respond_to do |format|
      format.html { redirect_to style_musicals_path, notice: "Style musical was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_style_musical
      @style_musical = StyleMusical.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def style_musical_params
      params.expect(style_musical: [ :nom ])
    end
end
