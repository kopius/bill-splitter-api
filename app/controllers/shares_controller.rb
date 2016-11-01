class SharesController < ProtectedController
  before_action :set_share, only: [:show, :update, :destroy]

  # GET /bills/:id/shares
  # GET /bills/:id/shares.json
  def index
    @bill = current_user.bills.find(params[:bill_id])
    @shares = @bill.shares

    # @shares = Share.find(params[:bill_id])

    render json: @shares
  end

  # GET /bills/:bill_id/shares/:id
  # GET /bills/:bill_id/shares/:id.json
  def show
    render json: @share.to_json(methods: :adjusted_cost)
  end

  # POST /bills/:bill_id/shares
  # POST /bills/:bill_id/shares.json
  def create
    @share = Share.create(share_params)

    if @share.save
      render json: @share, status: :created, location: @share
    else
      render json: @share.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bills/:bill_id/shares/:id
  # PATCH/PUT /bills/:bill_id/shares/:id.json
  def update
    @share = Share.find(params[:id])

    if @share.update(share_params)
      head :no_content
    else
      render json: @share.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bills/:bill_id/shares/:id
  # DELETE /bills/:id/shares/:id.json
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
