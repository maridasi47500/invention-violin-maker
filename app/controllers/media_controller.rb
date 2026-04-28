class MediaController < ApplicationController
  before_action :set_media, only: %i[ show edit update destroy ]

  # GET /media or /media.json
  def index
    @media = Media.all.where(exemple_musical_id: params[:exemple_musical_id])
    @coup_archet = CoupArchet.find(params[:coup_archet_id])
    @autremedia = Media.includes(:exemple_musical).all.where.not(exemple_musical_id: params[:exemple_musical_id]).where(exemple_musical: {coup_archet: @coup_archet})
  rescue
    @media = Media.all.first(1)
    @autremedia = []
    @coup_archet = CoupArchet.first
  end

  # GET /media/1 or /media/1.json
  def show
  end

  # GET /media/new
  def new
    @media = Media.new
  end

  # GET /media/1/edit
  def edit
  end

  # POST /media or /media.json
  def create
    @media = Media.new(media_params)

    respond_to do |format|
      if @media.save
        format.html { redirect_to @media, notice: "Media was successfully created." }
        format.json { render :show, status: :created, location: @media }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @media.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media/1 or /media/1.json
  def update
    respond_to do |format|
      if @media.update(media_params)
        format.html { redirect_to @media, notice: "Media was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @media }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @media.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media/1 or /media/1.json
  def destroy
    @media.destroy!

    respond_to do |format|
      format.html { redirect_to media_index_path, notice: "Media was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media
      @media = Media.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def media_params
      params.expect(media: [ :url, :type_media, :exemple_musical_id ])
    end
end
