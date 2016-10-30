class SharesController < ApplicationController
  before_action :set_share, only: [:show, :update, :destroy]

  # GET /shares
  # GET /shares.json
  def index
    @shares = Share.all

    render json: @shares
  end

  # GET /shares/1
  # GET /shares/1.json
  def show
    render json: @share
  end

  # POST /shares
  # POST /shares.json
  def create
    @share = Share.new(share_params)

    if @share.save
      render json: @share, status: :created, location: @share
    else
      render json: @share.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shares/1
  # PATCH/PUT /shares/1.json
  def update
    @share = Share.find(params[:id])

    if @share.update(share_params)
      head :no_content
    else
      render json: @share.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shares/1
  # DELETE /shares/1.json
  def destroy
    @share.destroy

    head :no_content
  end

  private

  def set_share
    @share = Share.find(params[:id])
  end

  def share_params
    params.require(:share).permit(:person_name, :base_cost, :cost_adjustment, :bill_id)
  end
end
