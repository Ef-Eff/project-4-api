class PmsController < ApplicationController
  before_action :set_pm, only: [:show, :update, :destroy]

  # GET /pms
  def index
    @pms = Pm.all

    render json: @pms
  end

  # GET /pms/1
  def show
    render json: @pm
  end

  # POST /pms
  def create
    @pm = Pm.new(Uploader.image(pm_params))
    @pm.sender = current_user

    if @pm.save
      render json: @pm, status: :created, location: @pm
    else
      render json: @pm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pms/1
  def update
    if @pm.update(pm_params)
      render json: @pm
    else
      render json: @pm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pms/1
  def destroy
    @pm.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pm
      @pm = Pm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pm_params
      params.require(:pm).permit(:receiver_id, :body, :image, :subject)
    end
end
