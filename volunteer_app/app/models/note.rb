class Note < ActiveRecord::Base
	# belongs to both projects and volunteers
	belongs_to :volunteers
	belongs_to :projects
end
