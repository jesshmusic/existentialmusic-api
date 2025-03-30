class DevHomesController < ApplicationController
  before_action :set_dev_home, only: %i[ show edit update destroy ]

  # GET /dev_homes or /dev_homes.json
  def index
    @dev_homes = DevHome.all
  end

  # GET /dev_homes/1 or /dev_homes/1.json
  def show
  end

  # GET /dev_homes/new
  def new
    @dev_home = DevHome.new
  end

  # GET /dev_homes/1/edit
  def edit
  end

  # POST /dev_homes or /dev_homes.json
  def create
    @dev_home = DevHome.new(dev_home_params)

    respond_to do |format|
      if @dev_home.save
        format.html { redirect_to @dev_home, notice: "Dev home was successfully created." }
        format.json { render :show, status: :created, location: @dev_home }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dev_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dev_homes/1 or /dev_homes/1.json
  def update
    respond_to do |format|
      if @dev_home.update(dev_home_params)
        format.html { redirect_to @dev_home, notice: "Dev home was successfully updated." }
        format.json { render :show, status: :ok, location: @dev_home }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dev_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_homes/1 or /dev_homes/1.json
  def destroy
    @dev_home.destroy!

    respond_to do |format|
      format.html { redirect_to dev_homes_path, status: :see_other, notice: "Dev home was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_home
      @dev_home = DevHome.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def dev_home_params
      params.expect(dev_home: [ :title ])
    end
end
