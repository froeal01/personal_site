class Admin::JavascriptProjectsController < ApplicationController

	def edit
		@project = JavascriptProject.find(params[:id])
	end

	def update
		project = JavascriptProject.find(params[:id])
		project.update_attributes!(javascript_project_params)
		redirect_to admins_path
	end


	def create
		project = JavascriptProject.create(javascript_project_params)
		if project
			redirect_to admins_path
		else
			redirect_to new_admin_path
		end
	end

	def destroy
		project = JavascriptProject.find(params[:id])
			project.delete
			redirect_to admins_path
	end


	private

	def javascript_project_params
		params.require(:javascript_project).permit!
	end

end