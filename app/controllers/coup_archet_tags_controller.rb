class CoupArchetTagsController < ApplicationController
  before_action :set_coup_archet_tag, only: %i[ show edit update destroy ]

  # GET /coup_archet_tags or /coup_archet_tags.json
  def index
    @coup_archet_tags = CoupArchetTag.all
  end

  # GET /coup_archet_tags/1 or /coup_archet_tags/1.json
  def show
  end

  # GET /coup_archet_tags/new
  def new
    @coup_archet_tag = CoupArchetTag.new
  end

  # GET /coup_archet_tags/1/edit
  def edit
  end

  # POST /coup_archet_tags or /coup_archet_tags.json
  def create
    @coup_archet_tag = CoupArchetTag.new(coup_archet_tag_params)

    respond_to do |format|
      if @coup_archet_tag.save
        format.html { redirect_to @coup_archet_tag, notice: "Coup archet tag was successfully created." }
        format.json { render :show, status: :created, location: @coup_archet_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coup_archet_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coup_archet_tags/1 or /coup_archet_tags/1.json
  def update
    respond_to do |format|
      if @coup_archet_tag.update(coup_archet_tag_params)
        format.html { redirect_to @coup_archet_tag, notice: "Coup archet tag was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @coup_archet_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coup_archet_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coup_archet_tags/1 or /coup_archet_tags/1.json
  def destroy
    @coup_archet_tag.destroy!

    respond_to do |format|
      format.html { redirect_to coup_archet_tags_path, notice: "Coup archet tag was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coup_archet_tag
      @coup_archet_tag = CoupArchetTag.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def coup_archet_tag_params
      params.expect(coup_archet_tag: [ :coup_archet_id, :tag_id ])
    end
end
