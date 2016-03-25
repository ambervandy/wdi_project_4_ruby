class VolunteersController < ApplicationController

	# bypass authenticity token
	skip_before_action :verify_authenticity_token

	# find project by params in private method
	before_action :return_volunteer, only: [:show, :edit, :update, :destroy, :add_project, :remove_project]

	def index
		# send all volunteers
		@volunteers = Volunteer.all
	end

	def show
		# send all projects
		@projects = Project.all
	end

	def new
		@volunteer = Volunteer.new
	end

	def create
		# create volunteer based on form then redirect to volunteer
		@volunteer = Volunteer.create(volunteer_params)
		redirect_to @volunteer
	end

	def update
		# update volunteer based on form then redirect to volunteer
		if @volunteer.update(volunteer_params)
			redirect_to @volunteer
		else
			# if fail to update, rerender the form
			render :action => :edit
		end		
	end

	def add_project
		# find volunteer and project
		volunteer = Volunteer.find(params[:id])
		project = Project.find(params[:project_id])
		# push project into volunteer's projects then redirect
		volunteer.projects << project
		redirect_to volunteer_path(volunteer)
	end

	def remove_project
		# find volunteer and project
		volunteer = Volunteer.find(params[:id])
		project = Project.find(params[:itemId])
		# delete project from volunteer's projects then redirect
		volunteer.projects.delete(project)
		redirect_to volunteer_path(volunteer)
	end

	def destroy
		@volunteer.destroy
		redirect_to '/volunteers'
	end


	# private
	private

	# strong params
	def return_volunteer
		@volunteer = Volunteer.find(params[:id])	
	end

	# strong params
	def volunteer_params
		params.require(:volunteer).permit(:first_name, :last_name, :email, :phone, :img_url, :area_interest, :languages)
	end


end





































