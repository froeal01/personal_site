class Message < ActiveRecord::Base

	validates :name, :email, :subject, :body, :presence => true
  validates :email, :format => { :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i }, :allow_blank => true

end