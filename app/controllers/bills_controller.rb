class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :update, :destroy]

  # GET /bills
  # GET /bills.json
  def index
    @bills = Bill.all

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
    @bill = Bill.new(bill_params)

    if @bill.save
      render json: @bill, status: :created, location: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bills/1
  # PATCH/PUT /bills/1.json
  def update
    @bill = Bill.find(params[:id])

    if @bill.update(bill_params)
      head :no_content
    else
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
      @bill = Bill.find(params[:id])
    end

    def bill_params
      params.require(:bill).permit(:group_size, :total_amount, :user_id)
    end
end
