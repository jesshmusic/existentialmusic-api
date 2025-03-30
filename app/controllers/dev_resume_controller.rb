class DevResumeController < ApplicationController
  before_action :set_dev_resume, only: %i[ show edit update destroy ]

  # GET /dev_resume or /dev_resume.json
  def show
  end

  # GET /dev_resume/edit
  def edit
  end

  # PATCH/PUT /dev_resume or /dev_resume.json
  def update
    respond_to do |format|
      if @dev_resume.update(dev_resume_params)
        format.html { redirect_to @dev_resume, notice: "Dev resume was successfully updated." }
        format.json { render :show, status: :ok, location: @dev_resume }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dev_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_resume or /dev_resume.json
  def destroy
    @dev_resume.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: "Dev resume was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_dev_resume
    @dev_resume = DevResume.singleton
  end

  def dev_resume_params
    params.require(:dev_resume).permit(:name, :title, :resume_pdf)
  end
end
