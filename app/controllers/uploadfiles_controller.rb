class UploadfilesController < ApplicationController
  before_filter :load_order, :except=> :destroy
  def index
  	@uploadfiles=Uploadfile.all
  end

  def new
  	@uploadfile=Uploadfile.new
  end

  def create
  	@uploadfile=@order.uploadfiles.new(params[:uploadfile])
  	#@uploadfile=Uploadfile.new(params[:uploadfile])
  	#@uploadfile=@uploadfile.order.build(params[:uploadfile])
  	#@uploadfile=Uploadfile.new(params[:uploadfile])

    respond_to do |format|
      if @uploadfile.save
        format.html { redirect_to @order, notice: 'file was successfully uploaded.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy
  	@uploadfile = Uploadfile.find(params[:id])
    @uploadfile.destroy

    respond_to do |format|
      format.html { redirect_to @order, :notice=>"the file #{@uploadfile.name} has been deleted" }
      format.json { head :no_content }
    end
  end
  private
   def load_order
    @order = Order.find(params[:order_id])
  end
end
