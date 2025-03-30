class TechnologiesController < ApplicationController
  before_action :set_tech, only: %i[ show edit update destroy ]

  # GET /technologies or /technologies.json
  def index
    @teches = Tech.all
  end

  # GET /technologies/1 or /technologies/1.json
  def show
  end

  # GET /technologies/new
  def new
    @tech = Tech.new
  end

  # GET /technologies/1/edit
  def edit
  end

  # POST /technologies or /technologies.json
  def create
    @tech = Tech.new(tech_params)

    respond_to do |format|
      if @tech.save
        format.html { redirect_to @tech, notice: "Tech was successfully created." }
        format.json { render :show, status: :created, location: @tech }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technologies/1 or /technologies/1.json
  def update
    respond_to do |format|
      if @tech.update(tech_params)
        format.html { redirect_to @tech, notice: "Tech was successfully updated." }
        format.json { render :show, status: :ok, location: @tech }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technologies/1 or /technologies/1.json
  def destroy
    @tech.destroy!

    respond_to do |format|
      format.html { redirect_to teches_path, status: :see_other, notice: "Tech was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech
      @tech = Tech.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tech_params
      params.expect(tech: [ :name, :description ])
    end
end
