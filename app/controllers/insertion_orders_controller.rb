class InsertionOrdersController < ApplicationController
  before_action :set_insertion_order, only: [:show, :edit, :update, :destroy]

  # GET /insertion_orders
  # GET /insertion_orders.json
  def index
    @insertion_orders = InsertionOrder.all
  end

  # GET /insertion_orders/1
  # GET /insertion_orders/1.json
  def show
  end

  # GET /insertion_orders/new
  def new
    @insertion_order = InsertionOrder.new
  end

  # GET /insertion_orders/1/edit
  def edit
  end

  # POST /insertion_orders
  # POST /insertion_orders.json
  def create
    @insertion_order = InsertionOrder.new(insertion_order_params)

    respond_to do |format|
      if @insertion_order.save
        format.html { redirect_to @insertion_order, notice: 'Insertion order was successfully created.' }
        format.json { render :show, status: :created, location: @insertion_order }
      else
        format.html { render :new }
        format.json { render json: @insertion_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insertion_orders/1
  # PATCH/PUT /insertion_orders/1.json
  def update
    respond_to do |format|
      if @insertion_order.update(insertion_order_params)
        format.html { redirect_to @insertion_order, notice: 'Insertion order was successfully updated.' }
        format.json { render :show, status: :ok, location: @insertion_order }
      else
        format.html { render :edit }
        format.json { render json: @insertion_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insertion_orders/1
  # DELETE /insertion_orders/1.json
  def destroy
    @insertion_order.destroy
    respond_to do |format|
      format.html { redirect_to insertion_orders_url, notice: 'Insertion order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insertion_order
      @insertion_order = InsertionOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insertion_order_params
      params.require(:insertion_order).permit(:brand_id, :name, :io_number, :start_date, :end_date)
    end
end
