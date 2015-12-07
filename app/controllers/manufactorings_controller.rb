class ManufactoringsController < ApplicationController
  before_action :set_manufactoring, only: [:show, :edit, :update, :destroy]

  # GET /manufactorings
  # GET /manufactorings.json
  def index
    @manufactorings = Manufactoring.all
  end

  # GET /manufactorings/1
  # GET /manufactorings/1.json
  def show
  end

  # GET /manufactorings/new
  def new
    @manufactoring = Manufactoring.new
  end

  # GET /manufactorings/1/edit
  def edit
  end

  # POST /manufactorings
  # POST /manufactorings.json
  def create
    @manufactoring = Manufactoring.new(manufactoring_params)

    respond_to do |format|
      if @manufactoring.save
        format.html { redirect_to @manufactoring, notice: 'Manufactoring was successfully created.' }
        format.json { render :show, status: :created, location: @manufactoring }
      else
        format.html { render :new }
        format.json { render json: @manufactoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manufactorings/1
  # PATCH/PUT /manufactorings/1.json
  def update
    respond_to do |format|
      if @manufactoring.update(manufactoring_params)
        format.html { redirect_to @manufactoring, notice: 'Manufactoring was successfully updated.' }
        format.json { render :show, status: :ok, location: @manufactoring }
      else
        format.html { render :edit }
        format.json { render json: @manufactoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manufactorings/1
  # DELETE /manufactorings/1.json
  def destroy
    @manufactoring.destroy
    respond_to do |format|
      format.html { redirect_to manufactorings_url, notice: 'Manufactoring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manufactoring
      @manufactoring = Manufactoring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manufactoring_params
      params.require(:manufactoring).permit(:batch_amount, :batch_unit, :batch_date, :batch_status, :order_id)
    end
end
