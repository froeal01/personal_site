class CreateRubyOnRailsProject < ActiveRecord::Migration
  def change
    create_table :ruby_on_rails_projects do |t|
    	t.string :name
    	t.string :description
    	t.string :url
    	t.timestamp
    end
  end
end
