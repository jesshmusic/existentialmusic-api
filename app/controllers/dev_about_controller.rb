class DevAboutController < ApplicationController
  before_action :set_dev_about, only: %i[ show edit update destroy ]

  # GET /dev_about or /dev_about.json
  def show
  end

  # GET /dev_about/edit
  def edit
  end

  # PATCH/PUT /dev_about or /dev_about.json
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

  # DELETE /dev_about or /dev_about.json
  def destroy
    @dev_about.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: "Dev about was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_dev_about
    @dev_about = DevAbout.singleton
  end

  def dev_about_params
    params.require(:dev_about).permit(:title, :subtitle, :description, :rich_text)
  end
end
