class UploadsController < ApplicationController
  def index
  	render :file=>'uploads/uploadfiles'
  end

  def uploadFile
  	post=Upload.save(params[:upload])
  	render :text=>"File uploaded succesfully"
  end
end
