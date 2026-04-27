class PuceCategoriesController < ApplicationController
  before_action :set_puce_category, only: %i[ show edit update destroy ]

  # GET /puce_categories or /puce_categories.json
  def index
    @puce_categories = PuceCategory.all
  end

  # GET /puce_categories/1 or /puce_categories/1.json
  def show
  end

  # GET /puce_categories/new
  def new
    @puce_category = PuceCategory.new
  end

  # GET /puce_categories/1/edit
  def edit
  end

  # POST /puce_categories or /puce_categories.json
  def create
    @puce_category = PuceCategory.new(puce_category_params)

    respond_to do |format|
      if @puce_category.save
        format.html { redirect_to @puce_category, notice: "Puce category was successfully created." }
        format.json { render :show, status: :created, location: @puce_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @puce_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puce_categories/1 or /puce_categories/1.json
  def update
    respond_to do |format|
      if @puce_category.update(puce_category_params)
        format.html { redirect_to @puce_category, notice: "Puce category was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @puce_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @puce_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puce_categories/1 or /puce_categories/1.json
  def destroy
    @puce_category.destroy!

    respond_to do |format|
      format.html { redirect_to puce_categories_path, notice: "Puce category was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puce_category
      @puce_category = PuceCategory.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def puce_category_params
      params.expect(puce_category: [ :nom, :description ])
    end
end
