class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
  before_filter :signed_in_user, :only=>[ :index, :create, :new]
  
  def index
    #@orders = Order.all
    @orders = Order.paginate :page=>params[:page], :order=>'created_at desc',
    :per_page =>20
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show

    @order=Order.find(params[:id])
    @uploadfile=@order.uploadfiles.new
    calculator @order
    @orders=current_user.orders.paginate(page: params[:page])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    #@order = Order.new(params[:order])
    @order=current_user.orders.build(params[:order])
    respond_to do |format|
      if @order.save
        calculator @order
        @order.update_attributes(:price=>@total_price)
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end
  def notification
    if params[:item_number1] && !params[:item_number1].empty?
      #paypal sends an IPN even when the transaction is void
      if params[:payment_status]=="Completed"
        @order=Order.find(params[:item_number1].to_i) rescue nil
        @order.payments.build(:quantity=>1, :amount=>params[:mic_gross_1], :status=>params[:payment_status]).save unless @order.nil?
      end
    end
    render :nothing=>true
  end
end
