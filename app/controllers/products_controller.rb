class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all

  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new

  end

  # GET /products/1/edit
  def edit
  end

  def create_order

    @products = Product.all
    @couriers = Courier.all
  end

   def create_order_check
    @quantity_list=params[:quantities]
    produkty=[]
    price_list = []
    value=0
    @products_id = params[:product_ids]
    @products_id.each do |id|
        @product = Product.find_by(id: id)
        value+=@product.price
    end
    @quantity_list=@quantity_list.reject(&:empty?)
    if session[:user_type] == "W"
        @order = Order.create(value: value, status: 'created', comment: params[:komentarz], couriers_id: params[:dostawca], volonteers_id: session[:user_id])
        index=0
        @products_id.each do |id|
            @prod_do_zam = ProductToOrder.create(quantity:@quantity_list[index], orders_id: @order.id, products_id: id)
            index=index+1
        end
        return render action: :order_complited
    end
    if session[:user_type] == "PB"
        @order = Order.create(value: value , status: 'created', comment: params[:komentarz], couriers_id: params[:dostawca], employees_id: session[:user_id])
        index=0
        @products_id.each do |id|
            @prod_do_zam = ProductToOrder.create(quantity:@quantity_list[index], orders_id: @order.id, products_id: id)
            index=index+1
        end
        return render action: :order_complited
    end
    return redirect_to '/welcome'
  end

  def order_complited
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :producent)
    end
end
