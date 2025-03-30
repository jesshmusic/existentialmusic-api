class PositionsController < ApplicationController
  before_action :set_work, only: %i[ show edit update destroy ]

  # GET /positions or /positions.json
  def index
    @works = Work.all
  end

  # GET /positions/1 or /positions/1.json
  def show
  end

  # GET /positions/new
  def new
    @work = Work.new
  end

  # GET /positions/1/edit
  def edit
  end

  # POST /positions or /positions.json
  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to @work, notice: "Work was successfully created." }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positions/1 or /positions/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to @work, notice: "Work was successfully updated." }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positions/1 or /positions/1.json
  def destroy
    @work.destroy!

    respond_to do |format|
      format.html { redirect_to works_path, status: :see_other, notice: "Work was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def work_params
      params.expect(work: [ :company, :role, :description, :start_date, :end_date ])
    end
end
