class Admin::RubyProjectsController < ApplicationController

	def edit
		@project = RubyProject.find(params[:id])
	end

	def update
		project = RubyProject.find(params[:id])
		project.update_attributes!(ruby_project_params)
		redirect_to admins_path
	end


	def create
		project = RubyProject.create(ruby_project_params)
		if project
			redirect_to admins_path
		else
			redirect_to new_admin_path
		end
	end

	def destroy
		project = RubyProject.find(params[:id])
			project.delete
			redirect_to admins_path
	end


	private

	def ruby_project_params
		params.require(:ruby_project).permit!
	end


end