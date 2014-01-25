class JavascriptProject < ActiveRecord::Base
	validates :name, :url, :description, :presence => true

end
