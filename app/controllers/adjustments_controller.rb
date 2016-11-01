class AdjustmentsController < ProtectedController
  before_action :set_adjustment, only: [:show, :update, :destroy]

  # GET /adjustments
  # GET /adjustments.json
  def index
    @bill = current_user.bills.find(params[:bill_id])
    @share = @bill.shares.find(params[:share_id])
    @adjustments = @share.adjustments

    render json: @adjustments
  end

  # GET /adjustments/1
  # GET /adjustments/1.json
  def show
    render json: @adjustment
  end

  # POST /adjustments
  # POST /adjustments.json
  def create
    @adjustment = Adjustment.new(adjustment_params)

    if @adjustment.save
      render json: @adjustment, status: :created, location: @adjustment
    else
      render json: @adjustment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adjustments/1
  # PATCH/PUT /adjustments/1.json
  def update
    @adjustment = Adjustment.find(params[:id])

    if @adjustment.update(adjustment_params)
      head :no_content
    else
      render json: @adjustment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adjustments/1
  # DELETE /adjustments/1.json
  def destroy
    @adjustment.destroy

    head :no_content
  end

  private

  def set_adjustment
    @adjustment = Adjustment.find(params[:id])
  end

  def adjustment_params
    params.require(:adjustment).permit(:label,
                                       :price,
                                       :did_participate,
                                       :num_participants,
                                       :share_id)
  end
end
