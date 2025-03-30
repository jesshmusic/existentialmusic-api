class DevHomeController < ApplicationController
  before_action :set_dev_home, only: %i[ show edit update destroy ]

  # GET /dev_home or /dev_home.json
  def show
  end

  # GET /dev_home/edit
  def edit
  end

  # PATCH/PUT /dev_home or /dev_home.json
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

  # DELETE /dev_home or /dev_home.json
  def destroy
    @dev_home.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: "Dev home was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_dev_home
    @dev_home = DevHome.singleton
  end

  def dev_home_params
    params.require(:dev_home).permit(:headline, :background_image, :call_to_action)
  end
end

