class CustomersController < ApplicationController
  # GET /customers
  # GET /customers.json
   before_filter :signed_in_user, :only=>[:index, :show, :edit, :update]
  before_filter :correct_user, :only=>[:edit, :update]
  before_filter :admin_user, :only=>[:index, :destroy]
  def index
    #@customers = Customer.all
    @customers = Customer.paginate :page=>params[:page], :order=>'created_at desc',
    :per_page =>10
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id])
    @orders=@customer.orders
    @orders=@customer.orders.paginate :page=>params[:page], :per_page=>7
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
    @customer = Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(params[:customer])

    respond_to do |format|
      if @customer.save
        sign_in @customer
        format.html { redirect_to @customer, notice: 'Welcome to Your Account.' }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { render action: "new" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to @customer, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end
   private
  def correct_user
    @customer=Customer.find(params[:id])
    redirect_to(root_path) unless current_user?(@customer)
  end
  def admin_user
    redirect_to(root_path) unless current_user.admin?
    #restricts acess to delete action only to the admin
  end
end