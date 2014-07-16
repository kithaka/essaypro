class StatesController < ApplicationController
before_filter :load_order
  def create
  	@state = @order.states.new(params[:state])
        if @state.save
      respond_to do |format|
        format.html {redirect_to @order, :notice => 'Order Confirmed'}
        format.js
        #with no code for the format.j rails will look for js.erb file thesame name as action
      end
    else
      respond_to do |format|
        format.html {redirect_to @order, :notice => 'Order already Confirmed'}
        format.js
      end
    end
  end

  private
   def load_order
    @order = Order.find(params[:order_id])
  end
end
