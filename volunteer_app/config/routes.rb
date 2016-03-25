Rails.application.routes.draw do

  # root
  root 'projects#index'

  # volunteer resources
  resources :volunteers do
    # add project to volunteer
    member do
      put 'add_project'
    end
    # remove project from volunteer
    member do
      delete 'remove_project'
    end
    
  end

  # project resouces
  resources :projects do
    # add volunteer to project
    member do
      put 'add_volunteer'
    end
    # remove volunteer from project
    member do
      delete 'remove_volunteer'
    end  
    # notes resources
    resources :notes
  end 

end

# --------------------------------- ROUTES -------------------------------------

#                     root GET    /                                                  projects#index
#    add_project_volunteer PUT    /volunteers/:id/add_project(.:format)              volunteers#add_project
# remove_project_volunteer DELETE /volunteers/:id/remove_project(.:format)           volunteers#remove_project
#          volunteer_notes GET    /volunteers/:volunteer_id/notes(.:format)          notes#index
#                          POST   /volunteers/:volunteer_id/notes(.:format)          notes#create
#       new_volunteer_note GET    /volunteers/:volunteer_id/notes/new(.:format)      notes#new
#      edit_volunteer_note GET    /volunteers/:volunteer_id/notes/:id/edit(.:format) notes#edit
#           volunteer_note GET    /volunteers/:volunteer_id/notes/:id(.:format)      notes#show
#                          PATCH  /volunteers/:volunteer_id/notes/:id(.:format)      notes#update
#                          PUT    /volunteers/:volunteer_id/notes/:id(.:format)      notes#update
#                          DELETE /volunteers/:volunteer_id/notes/:id(.:format)      notes#destroy
#               volunteers GET    /volunteers(.:format)                              volunteers#index
#                          POST   /volunteers(.:format)                              volunteers#create
#            new_volunteer GET    /volunteers/new(.:format)                          volunteers#new
#           edit_volunteer GET    /volunteers/:id/edit(.:format)                     volunteers#edit
#                volunteer GET    /volunteers/:id(.:format)                          volunteers#show
#                          PATCH  /volunteers/:id(.:format)                          volunteers#update
#                          PUT    /volunteers/:id(.:format)                          volunteers#update
#                          DELETE /volunteers/:id(.:format)                          volunteers#destroy
#    add_volunteer_project PUT    /projects/:id/add_volunteer(.:format)              projects#add_volunteer
# remove_volunteer_project DELETE /projects/:id/remove_volunteer(.:format)           projects#remove_volunteer
#            project_notes GET    /projects/:project_id/notes(.:format)              notes#index
#                          POST   /projects/:project_id/notes(.:format)              notes#create
#         new_project_note GET    /projects/:project_id/notes/new(.:format)          notes#new
#        edit_project_note GET    /projects/:project_id/notes/:id/edit(.:format)     notes#edit
#             project_note GET    /projects/:project_id/notes/:id(.:format)          notes#show
#                          PATCH  /projects/:project_id/notes/:id(.:format)          notes#update
#                          PUT    /projects/:project_id/notes/:id(.:format)          notes#update
#                          DELETE /projects/:project_id/notes/:id(.:format)          notes#destroy
#                 projects GET    /projects(.:format)                                projects#index
#                          POST   /projects(.:format)                                projects#create
#              new_project GET    /projects/new(.:format)                            projects#new
#             edit_project GET    /projects/:id/edit(.:format)                       projects#edit
#                  project GET    /projects/:id(.:format)                            projects#show
#                          PATCH  /projects/:id(.:format)                            projects#update
#                          PUT    /projects/:id(.:format)                            projects#update
#                          DELETE /projects/:id(.:format)                            projects#destroy





























