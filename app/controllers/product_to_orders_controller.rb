class ProductToOrdersController < ApplicationController
  before_action :set_product_to_order, only: [:show, :edit, :update, :destroy]

  # GET /product_to_orders
  # GET /product_to_orders.json
  def index
    @product_to_orders = ProductToOrder.all
  end

  # GET /product_to_orders/1
  # GET /product_to_orders/1.json
  def show
  end

  # GET /product_to_orders/new
  def new
    @product_to_order = ProductToOrder.new
  end

  # GET /product_to_orders/1/edit
  def edit
  end

  # POST /product_to_orders
  # POST /product_to_orders.json
  def create
    @product_to_order = ProductToOrder.new(product_to_order_params)

    respond_to do |format|
      if @product_to_order.save
        format.html { redirect_to @product_to_order, notice: 'Product to order was successfully created.' }
        format.json { render :show, status: :created, location: @product_to_order }
      else
        format.html { render :new }
        format.json { render json: @product_to_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_to_orders/1
  # PATCH/PUT /product_to_orders/1.json
  def update
    respond_to do |format|
      if @product_to_order.update(product_to_order_params)
        format.html { redirect_to @product_to_order, notice: 'Product to order was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_to_order }
      else
        format.html { render :edit }
        format.json { render json: @product_to_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_to_orders/1
  # DELETE /product_to_orders/1.json
  def destroy
    @product_to_order.destroy
    respond_to do |format|
      format.html { redirect_to product_to_orders_url, notice: 'Product to order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_to_order
      @product_to_order = ProductToOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_to_order_params
      params.fetch(:product_to_order, {})
    end
end
