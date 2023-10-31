class MastersController < ApplicationController
  before_action :set_master, only: %i[ show update destroy ]

  # GET /masters
  def index
    @masters = Master.all

    render json: @masters
  end

  # GET /masters/1
  def show
    render json: @master
  end

  # POST /masters
  def create
    @master = Master.new(master_params)

    if @master.save
      render json: @master, status: :created, location: @master
    else
      render json: @master.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /masters/1
  def update
    if @master.update(master_params)
      render json: @master
    else
      render json: @master.errors, status: :unprocessable_entity
    end
  end

  # DELETE /masters/1
  def destroy
    @master.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master
      @master = Master.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def master_params
      params.require(:master).permit(:districtname)
    end
end
