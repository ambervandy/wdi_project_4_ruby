class ProjectsController < ApplicationController

	# bypass authenticity token
	skip_before_action :verify_authenticity_token

	# find project by params in private method
	before_action :return_project, only: [:show, :edit, :update, :destroy, :add_project, :remove_project]

	def index
		# send all projects and volunteers to index
		@projects = Project.all
		@volunteers = Volunteer.all
	end

	def show
		# send all volunteers
		@volunteers = Volunteer.all
		# send only notes with project_id of project params
		@notes = Note.where(project_id: params[:id])
		@note = Note.new
	end

	def new
		@project = Project.new
	end

	def create
		# create project from form and redirect to that project
		@project = Project.create(project_params)
		redirect_to @project
	end

	def update
		# update project from form and redirect to that project
		if @project.update(project_params)
			redirect_to @project
		else
			# if unsuccessful update, rerender the edit page
			render :action => :edit
		end
	end

	def add_volunteer
		# find the project, then find the volunteer from dropdown
		project = Project.find(params[:id])
		volunteer = Volunteer.find(params[:volunteer_id])
		# push volunteer into project's volunteers then redirect to project
		project.volunteers << volunteer
		redirect_to project_path(project)
	end

	def remove_volunteer
		# find proeject then find volunteer
		project = Project.find(params[:id])
		volunteer = Volunteer.find(params[:itemId])
		# delete volunteer from project's volunteers then redirect back to project
		project.volunteers.delete(volunteer)
		redirect_to project_path(project)
	end

	def destroy
		@project.destroy
		redirect_to '/projects'
	end


	# private
	private

	# strong params
	def return_project
		@project = Project.find(params[:id])	
	end

	# strong params
	def project_params
		params.require(:project).permit(:name, :program_area, :location, :description, :num_volunteers, :date, :start_time, :end_time)
	end


end


















