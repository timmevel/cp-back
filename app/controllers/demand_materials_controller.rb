class DemandMaterialsController < ApplicationController
  before_action :set_demand_material, only: [:show, :edit, :update, :destroy]

  # GET /demand_materials
  # GET /demand_materials.json
  def index
    @demand_materials = DemandMaterial.all
  end

  # GET /demand_materials/1
  # GET /demand_materials/1.json
  def show
  end

  # GET /demand_materials/new
  def new
    @demand_material = DemandMaterial.new
  end

  # GET /demand_materials/1/edit
  def edit
  end

  # POST /demand_materials
  # POST /demand_materials.json
  def create
    @demand_material = DemandMaterial.new(demand_material_params)

    respond_to do |format|
      if @demand_material.save
        format.html { redirect_to @demand_material, notice: 'Demand material was successfully created.' }
        format.json { render :show, status: :created, location: @demand_material }
      else
        format.html { render :new }
        format.json { render json: @demand_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demand_materials/1
  # PATCH/PUT /demand_materials/1.json
  def update
    respond_to do |format|
      if @demand_material.update(demand_material_params)
        format.html { redirect_to @demand_material, notice: 'Demand material was successfully updated.' }
        format.json { render :show, status: :ok, location: @demand_material }
      else
        format.html { render :edit }
        format.json { render json: @demand_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demand_materials/1
  # DELETE /demand_materials/1.json
  def destroy
    @demand_material.destroy
    respond_to do |format|
      format.html { redirect_to demand_materials_url, notice: 'Demand material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demand_material
      @demand_material = DemandMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demand_material_params
      params.require(:demand_material).permit(:pot_id, :material_id, :quantity)
    end
end
