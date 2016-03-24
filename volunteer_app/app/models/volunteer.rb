class Volunteer < ActiveRecord::Base
	# has and belongs to many projects
	has_and_belongs_to_many :projects
end
