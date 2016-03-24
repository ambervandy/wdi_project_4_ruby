class NotesController < ApplicationController

	def create
		@note = Note.create(note_params)
		@project = Project.find(@note.project_id)
		redirect_to @project
	end

	private

	def note_params
		params.require(:note).permit(:author, :note, :date, :project_id)
	end
end
