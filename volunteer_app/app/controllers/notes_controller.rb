class NotesController < ApplicationController

	def create
		# create note based on form
		@note = Note.create(note_params)
		# add note to project then redirect to the project
		@project = Project.find(@note.project_id)
		redirect_to @project
	end

	# private
	private

	# strong params
	def note_params
		params.require(:note).permit(:author, :note, :date, :project_id)
	end
end
