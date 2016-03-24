class VolunteersController < ApplicationController

	# bypass authenticity token
	skip_before_action :verify_authenticity_token

	# find project by params in private method
	before_action :return_volunteer, only: [:show, :edit, :update, :destroy, :add_project, :remove_project]

	def index
		@volunteers = Volunteer.all
	end

	def show
		@projects = Project.all
	end

	def new
		@volunteer = Volunteer.new
	end

	def create
		@volunteer = Volunteer.create(volunteer_params)
		redirect_to @volunteer
	end

	def update
		if @volunteer.update(volunteer_params)
			redirect_to @volunteer
		else
			render :action => :edit
		end		
	end

	def add_project
		volunteer = Volunteer.find(params[:id])
		project = Project.find(params[:project_id])
		volunteer.projects << project
		redirect_to volunteer_path(volunteer)
	end

	def remove_project
		volunteer = Volunteer.find(params[:id])
		project = Project.find(params[:itemId])
		volunteer.projects.delete(project)
		redirect_to volunteer_path(volunteer)
	end

	def destroy
		@volunteer.destroy
		redirect_to '/volunteers'
	end


	# private
	private

	# get volunteer by params
	def return_volunteer
		@volunteer = Volunteer.find(params[:id])	
	end

	def volunteer_params
		params.require(:volunteer).permit(:first_name, :last_name, :email, :phone, :img_url, :area_interest, :languages)
	end


end





































