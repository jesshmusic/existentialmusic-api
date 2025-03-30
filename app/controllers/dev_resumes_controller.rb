class DevResumesController < ApplicationController
  before_action :set_dev_resume, only: %i[ show edit update destroy ]

  # GET /dev_resumes or /dev_resumes.json
  def index
    @dev_resumes = DevResume.all
  end

  # GET /dev_resumes/1 or /dev_resumes/1.json
  def show
  end

  # GET /dev_resumes/new
  def new
    @dev_resume = DevResume.new
  end

  # GET /dev_resumes/1/edit
  def edit
  end

  # POST /dev_resumes or /dev_resumes.json
  def create
    @dev_resume = DevResume.new(dev_resume_params)

    respond_to do |format|
      if @dev_resume.save
        format.html { redirect_to @dev_resume, notice: "Dev resume was successfully created." }
        format.json { render :show, status: :created, location: @dev_resume }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dev_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dev_resumes/1 or /dev_resumes/1.json
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

  # DELETE /dev_resumes/1 or /dev_resumes/1.json
  def destroy
    @dev_resume.destroy!

    respond_to do |format|
      format.html { redirect_to dev_resumes_path, status: :see_other, notice: "Dev resume was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_resume
      @dev_resume = DevResume.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def dev_resume_params
      params.expect(dev_resume: [ :title, :name ])
    end
end
