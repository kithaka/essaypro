class Upload < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.save(upload)
  	name=upload['datafile'].original_filename
  	directory="uploads"
  	path=File.join(directory, name)
  	File.open(path, "wb") {|f| f.write(upload['datafile'].read)}
  end
end
