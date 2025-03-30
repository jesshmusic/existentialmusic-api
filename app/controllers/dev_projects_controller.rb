class DevProjectsController < ApplicationController
  before_action :set_dev_project, only: %i[ show edit update destroy ]

  # GET /dev_projects or /dev_projects.json
  def index
    @dev_projects = DevProject.all
  end

  # GET /dev_projects/1 or /dev_projects/1.json
  def show
  end

  # GET /dev_projects/new
  def new
    @dev_project = DevProject.new
  end

  # GET /dev_projects/1/edit
  def edit
  end

  # POST /dev_projects or /dev_projects.json
  def create
    @dev_project = DevProject.new(dev_project_params)

    respond_to do |format|
      if @dev_project.save
        format.html { redirect_to @dev_project, notice: "Dev project was successfully created." }
        format.json { render :show, status: :created, location: @dev_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dev_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dev_projects/1 or /dev_projects/1.json
  def update
    respond_to do |format|
      if @dev_project.update(dev_project_params)
        format.html { redirect_to @dev_project, notice: "Dev project was successfully updated." }
        format.json { render :show, status: :ok, location: @dev_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dev_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_projects/1 or /dev_projects/1.json
  def destroy
    @dev_project.destroy!

    respond_to do |format|
      format.html { redirect_to dev_projects_path, status: :see_other, notice: "Dev project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_project
      @dev_project = DevProject.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def dev_project_params
      params.expect(dev_project: [ :title, :slug, :subtitle, :link, :excerpt ])
    end
end
