class Admin::RubyOnRailsProjectsController < ApplicationController

	def edit
		@project = RubyOnRailsProject.find(params[:id])
	end

	def update
		project = RubyOnRailsProject.find(params[:id])
		project.update_attributes!(ruby_on_rails_project_params)
		redirect_to admins_path
	end

	def create
		project = RubyOnRailsProject.create(ruby_on_rails_project_params)
		if project
			redirect_to admins_path
		else
			redirect_to new_admin_path
		end
	end

	def destroy
		project = RubyOnRailsProject.find(params[:id])
			project.delete
			redirect_to admins_path
	end

	private

	def ruby_on_rails_project_params
		params.require(:ruby_on_rails_project).permit!
	end

end