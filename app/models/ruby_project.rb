class RubyProject < ActiveRecord::Base
	include ActiveModel::ForbiddenAttributesProtection
	validates :name, :url, :description, :presence => true

end