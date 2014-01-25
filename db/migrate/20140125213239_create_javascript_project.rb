class CreateJavascriptProject < ActiveRecord::Migration
  def change
    create_table :javascript_projects do |t|
    	t.string :name
    	t.string :description
    	t.string :url
    	t.timestamp
    end
  end
end
