# DELETE
Volunteer.delete_all
Project.delete_all
Note.delete_all


# VOLUNTEERS
volunteers = Volunteer.create([
	{
		first_name: 'Amber',
		last_name: 'Vandy',
		email: 'awat55@gmail.com',
		phone: '616-706-2408',
		img_url: 'img here',
		area_interest: 'Animal Care, Children, Environment',
		languages: 'English'
	},{
		first_name: 'Petunia',
		last_name: 'Rose',
		email: 'prose@hotmail.com',
		phone: '646-569-2940',
		img_url: 'img here',
		area_interest: 'Education, Hunger, Seniors',
		languages: 'English, Spanish, French'
	},{
		first_name: 'Harold',
		last_name: 'Tuna',
		email: 'htuna@aol.com',
		phone: '212-492-3048',
		img_url: 'img here',
		area_interest: 'Animal Care, Seniors, Special Needs',
		languages: 'English'
	},{
		first_name: 'Farris',
		last_name: 'Carol',
		email: 'fcarol@gmail.com',
		phone: '312-394-2031',
		img_url: 'img here',
		area_interest: 'Animal Care, Children, Seniors',
		languages: 'English, Portuguese'
	},{
		first_name: 'Richard',
		last_name: 'Lang',
		email: 'rich.lang@gmail.com',
		phone: '646-234-2492',
		img_url: 'img here',
		area_interest: 'Children, Education, Special Needs',
		languages: 'English'
	}
])

# PROJECTS
projects = Project.create([
	{
		name: 'Mock Interviews with AHRCNYC',
		program_area: 'Special Needs',
		location: 'Financial District, NYC',
		description: 'Conduct mock interviews with job seekers from AHRCNYC providing comprehensive skills assessment, job readiness, and job placement services to at-risk youth and intellectually disabled adults. Volunteers will simulate one-on-one interviews to empower individuals, promote confidence, and provide valuable feedback to help participants in their job search. Prior interviewing experience is helpful but not necessary. Materials will be provided.',
		num_volunteers: 6,
		date: '5.20.2016',
		start_time: '11:30am',
		end_time: '3:00pm'
	},{
		name: 'Academic Skills Tutoring',
		program_area: 'Children, Education',
		location: 'West Village, NYC',
		description: 'Tutor children in math and science. Student levels range from elementary school through college.',
		num_volunteers: 2,
		date: '4.29.2016',
		start_time: '3:30pm',
		end_time: '6:00pm'
	},{
		name: 'Walk Dogs at BARC',
		program_area: 'Animal Care',
		location: 'Williamsburg, Brooklyn',
		description: 'Walk rescued dogs at a no-kill animal shelter in Williamsburg. You must be 21 years of age or older and this shelter has a lot of large breed dogs, such as pit mixes, boxers, bullmastiff and rottweilers. While experience walking large dogs is not required, it is recommended as there are very few small dogs.',
		num_volunteers: 3,
		date: '5.15.2016',
		start_time: '10:30am',
		end_time: '1:00pm'
	},{
		name: 'Compost at Added Value Red Hook Community Farm',
		program_area: 'Environment',
		location: 'Red Hook, Brooklyn',
		description: 'Assist with the largest community compost site in the United States that runs entirely on renewable resources (sun, wind, and human power). The NYC Compost Project hosted by the Brooklyn Botanic Garden operates the compost site at the Red Hook Community Farm (across from IKEA). The program diverts tons of organic material each month from landfills and uses it to create beautiful soil amendments that will help grow much-needed healthful food for the community. Volunteers will engage in a variety of tasks related to the compost program, which may include building new mounds with donated food and wood chips, turning mounds, or sifting.',
		num_volunteers: 4,
		date: '6.02.2016',
		start_time: '11:30am',
		end_time: '2:00pm'
	},{
		name: 'Soup Kitchen Service at Coney Island Lighthouse Mission',
		program_area: 'Hunger',
		location: 'Coney Island, Brooklyn',
		description: 'Prep and serve Friday night dinner at this community kitchen. Each dinner, the mission serves approximately 55-60 hungry individuals in an area heavily impacted by Hurricane Sandy. Volunteers will help the chef prepare the meal for the first hour, then provide table service for participants once they are seated and clean up during the last two hours.',
		num_volunteers: 3,
		date: '6.30.2016',
		start_time: '5:45pm',
		end_time: '8:30pm'
	},{
		name: 'Read to Me at New Walton Community Center',
		program_area: 'Children, Education',
		location: 'Morris Heights, The Bronx',
		description: 'Foster a love of learning by reading with children, ages ages 7-14, in small groups or in one on one pairs in order to make books and reading a fun and enriching part of their lives. This project will focus on a new book and related activities every three months. Each session will conclude with themed craft activity.',
		num_volunteers: 2,
		date: '6.16.2016',
		start_time: '10:00am',
		end_time: '1:00pm'
	},{
		name: 'Garden and Plant at New Roots Community Farm',
		program_area: 'Environment',
		location: 'Melrose, The Bronx',
		description: 'Help maintain this community garden by planting, weed, spreading wood chips, and helping out with other tasks as needed. The IRC New Roots Community Farm program enables refugee farmers to revitalize urban spaces, share their homegrown crops at farmers markets and rebuild local food systems.',
		num_volunteers: 4,
		date: '6.05.2016',
		start_time: '12:00pm',
		end_time: '4:00pm'
	}
])


# ADD VOLUNTEERS TO PROJECTS
projects[0].volunteers.push(volunteers[0], volunteers[2], volunteers[3])
projects[1].volunteers.push(volunteers[0], volunteers[2])
projects[2].volunteers.push(volunteers[1], volunteers[3], volunteers[4])
projects[3].volunteers.push(volunteers[0], volunteers[1])
projects[4].volunteers.push(volunteers[1])
projects[5].volunteers.push(volunteers[1], volunteers[4])
projects[6].volunteers.push(volunteers[2])
























































