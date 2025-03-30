class DevAboutsController < ApplicationController
  before_action :set_dev_about, only: %i[ show edit update destroy ]

  # GET /dev_abouts or /dev_abouts.json
  def index
    @dev_abouts = DevAbout.all
  end

  # GET /dev_abouts/1 or /dev_abouts/1.json
  def show
  end

  # GET /dev_abouts/new
  def new
    @dev_about = DevAbout.new
  end

  # GET /dev_abouts/1/edit
  def edit
  end

  # POST /dev_abouts or /dev_abouts.json
  def create
    @dev_about = DevAbout.new(dev_about_params)

    respond_to do |format|
      if @dev_about.save
        format.html { redirect_to @dev_about, notice: "Dev about was successfully created." }
        format.json { render :show, status: :created, location: @dev_about }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dev_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dev_abouts/1 or /dev_abouts/1.json
  def update
    respond_to do |format|
      if @dev_about.update(dev_about_params)
        format.html { redirect_to @dev_about, notice: "Dev about was successfully updated." }
        format.json { render :show, status: :ok, location: @dev_about }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dev_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_abouts/1 or /dev_abouts/1.json
  def destroy
    @dev_about.destroy!

    respond_to do |format|
      format.html { redirect_to dev_abouts_path, status: :see_other, notice: "Dev about was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_about
      @dev_about = DevAbout.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def dev_about_params
      params.expect(dev_about: [ :title, :subtitle ])
    end
end
