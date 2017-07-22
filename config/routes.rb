Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
  
  
  # CREATE
  get("/directors/new_form", { :controller => "movies", :action => "directors_new_form" })
  get("/create_director", { :controller => "movies", :action => "create_director_row" })

  # READ
  get("/", { :controller => "movies", :action => "index" })
  get("/directors", { :controller => "movies", :action => "directors_index" })
  get("/directors/:director_id", { :controller => "movies", :action => "directors_show" })

  # UPDATE
#  get("/photos/:an_id/edit", { :controller => "pictures", :action => "edit_form" })
#  get("/update_photo/:some_id", { :controller => "pictures", :action => "update_row" })

  # DELETE
  get("/delete_director/:director_toast_id", { :controller => "movies", :action => "director_destroy_row" })  
  
  
  
  
  
end
