class ProjectsController < ApplicationController

	# bypass authenticity token
	skip_before_action :verify_authenticity_token

	# find project by params in private method
	before_action :return_project, only: [:show, :edit, :update, :destroy, :add_project, :remove_project]

	def index
		@projects = Project.all
		@volunteers = Volunteer.all
	end

	def show
		@volunteers = Volunteer.all
		@notes = Note.all
		@note = Note.new
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.create(project_params)
		redirect_to @project
	end

	def update
		if @project.update(project_params)
			redirect_to @project
		else
			render :action => :edit
		end
	end

	def add_volunteer
		project = Project.find(params[:id])
		volunteer = Volunteer.find(params[:volunteer_id])
		project.volunteers << volunteer
		redirect_to project_path(project)
	end

	def remove_volunteer
		project = Project.find(params[:id])
		volunteer = Volunteer.find(params[:itemId])
		project.volunteers.delete(volunteer)
		redirect_to project_path(project)
	end

	def destroy
		@project.destroy
		redirect_to '/projects'
	end


	# private
	private

	# get project by params
	def return_project
		@project = Project.find(params[:id])	
	end

	def project_params
		params.require(:project).permit(:name, :program_area, :location, :description, :num_volunteers, :date, :start_time, :end_time)
	end


end


















