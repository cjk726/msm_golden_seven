Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
  
  
  # CREATE
  get("/directors/new_form", { :controller => "movies", :action => "directors_new_form" })
  get("/create_director", { :controller => "movies", :action => "create_director_row" })
  
  get("/actors/new_form", { :controller => "movies", :action => "actors_new_form" })
  get("/create_actor", { :controller => "movies", :action => "create_actor_row" })

  get("/movies/new_form", { :controller => "movies", :action => "movies_new_form" })
  get("/create_movie", { :controller => "movies", :action => "create_movie_row" })



  # READ
  get("/", { :controller => "movies", :action => "index" })
  
  get("/directors", { :controller => "movies", :action => "directors_index" })
  get("/directors/:director_id", { :controller => "movies", :action => "directors_show" })

  get("/actors", { :controller => "movies", :action => "actors_index" })
  get("/actors/:actor_id", { :controller => "movies", :action => "actors_show" })

  get("/movies", { :controller => "movies", :action => "movies_index" })
  get("/movies/:movie_id", { :controller => "movies", :action => "movies_show" })
  
  

  # UPDATE
  get("/directors/:director_id/edit_form", { :controller => "movies", :action => "directors_edit_form" })
  get("/update_director/:director_id", { :controller => "movies", :action => "update_director_row" })

  get("/actors/:actor_id/edit_form", { :controller => "movies", :action => "actors_edit_form" })
  get("/update_actor/:actor_id", { :controller => "movies", :action => "update_actor_row" })

  get("/movies/:movie_id/edit_form", { :controller => "movies", :action => "movies_edit_form" })
  get("/update_movie/:movie_id", { :controller => "movies", :action => "update_movie_row" })



  # DELETE
  get("/delete_director/:director_toast_id", { :controller => "movies", :action => "director_destroy_row" })  
  
  get("/delete_actor/:actor_toast_id", { :controller => "movies", :action => "actor_destroy_row" })  
  
  get("/delete_movie/:movie_toast_id", { :controller => "movies", :action => "movie_destroy_row" })  
  
  
  
end
