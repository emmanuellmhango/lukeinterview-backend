class Api::V1::FacilitiesController < ApplicationController
  before_action :set_api_v1_facility, only: [:show, :update, :destroy]

  # GET /api/v1/facilities
  def index
    begin
      @api_v1_facilities = Facility.all
      if @api_v1_facilities.present?
        render json: {success: true, facilities: @api_v1_facilities}
      else
        render json: {success: false, message: "No facilities found"}
      end
    rescue StandardError => e
      render json: { success: false, message: e.message }
    end
  end  

  # GET /api/v1/facilities_search
  def facilities_search
    begin
      @api_v1_facility = Facility.where(facility_name: params[:facility_name])
      if @api_v1_facility.present?
        render json: {success: true, facility: @api_v1_facility}
      else
        render json: {success: false, message: "No facility found with the term '#{params[:facility_name]}'"}
      end
    rescue StandardError => e
      render json: { success: false, message: e.message }
    end
  end

  # GET /api/v1/facilities_filter
  def facilities_filter
    begin
      @api_v1_facility = Facility.where(facility_name: params[:facility_term])
      if @api_v1_facility.present?
        render json: {success: true, facility: @api_v1_facility}
      else
        render json: {success: false, message: "No facility found with the term '#{params[:facility_term]}'"}
      end
    rescue StandardError => e
      render json: { success: false, message: e.message }
    end
  end

  # GET /api/v1/facilities/1
  def show
    render json: @api_v1_facility
  end

  # POST /api/v1/facilities
  def create
    @api_v1_facility = Facility.new(api_v1_facility_params)
    new_facilities = Facility.all
    if @api_v1_facility.save
      render json: { success: true, facilities: new_facilities }
    else
      render json: { success: false, message: @api_v1_facility.errors }
    end
  end

  # PATCH/PUT /api/v1/facilities/1
  def update
    if @api_v1_facility.update(api_v1_facility_params)
      render json: @api_v1_facility
    else
      render json: @api_v1_facility.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/facilities/1
  def destroy
    @api_v1_facility.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_facility
      @api_v1_facility = Facility.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_facility_params
      params.require(:facility).permit(:facility_code, :facility_name, :district_id, :owner_id)
    end
end
