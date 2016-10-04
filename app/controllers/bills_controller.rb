class BillsController < ProtectedController
  before_action :set_bill, only: [:show, :update, :destroy]

  # GET /bills
  # GET /bills.json
  def index
    @bills = current_user.bills

    render json: @bills
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
    render json: @bill
  end

  # POST /bills
  # POST /bills.json
  def create
    @bill = current_user.bills.build(bill_params)

    if @bill.save
      render json: @bill, status: :created, location: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bills/1
  # PATCH/PUT /bills/1.json
  def update
    puts 'you are in bill update'
    @bill = Bill.find(params[:id])

    if @bill.update(bill_params)
      puts 'you are in the if block of bill update'
      head :no_content
    else
      puts 'you are in the else block of bill update'
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill.destroy

    head :no_content
  end

  private

  def set_bill
    @bill = current_user.bills.find(params[:id])
  end

  def bill_params
    params.require(:bill).permit(:num_people, :total_amount, :user_id)
  end
end
