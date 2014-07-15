class MessagesController < ApplicationController
before_filter :load_order
def index
  @messages=@order.messages.all
  #@messages = @order.messages.paginate :page=>params[:page], :order=>'created_at desc',
    #:per_page =>15
    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def create
  	@message = @order.messages.new(params[:message])
    if @message.save
      respond_to do |format|
        format.html {redirect_to @order, :notice => 'Thanks for your message'}
        format.js
        #with no code for the format.j rails will look for js.erb file thesame name as action
      end
    else
      respond_to do |format|
        format.html {redirect_to @order, :alert=> "Ensure all fields are filled"}
        format.js {render 'fail_create.js.erb'}
      end
    end
  end

  private
   def load_order
    @order = Order.find(params[:order_id])
  end
end
