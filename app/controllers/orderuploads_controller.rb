class OrderuploadsController < ApplicationController
	def index
		render :file=>'uploads/uploadfiles'
	end
	def uploadFile
		post=Orderupload.save(params[:upload])
		render :text=>"File uploaded succesfully"
	end
end
