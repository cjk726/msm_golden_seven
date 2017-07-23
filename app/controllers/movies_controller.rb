class MoviesController < ActionController::Base
    
    #  Tables are Director   Actor   Movie


    # Root level homepage
    
    def index
          
    #   @d = Director.all

        render("index.html.erb")
    end
    
    
    
    # Actions for Director model (table)
    
    def directors_index

        @d = Director.all
      
        render("directors_index.html.erb")
    end
    
    
    def directors_show
        
        @d = Director.find(params["director_id"])

        render("directors_show.html.erb")
    end

    
    def director_destroy_row
        toast_d = Director.find(params["director_toast_id"])
        toast_d.destroy
        
        redirect_to("/directors")
    end
    
    
    def directors_new_form

        render("directors_new_form.html.erb")
    end
    
    
    def create_director_row
        
        d = Director.new
        d.name = params["the_name"]
        d.bio = params["the_bio"]
        d.dob = params["the_dob"]
        d.image_url = params["the_image_url"]
        d.save

        redirect_to("/directors")
    end
    
    
    def directors_edit_form

        @d = Director.find(params["director_id"])
    
        render("directors_edit_form.html.erb")
    end
      
    
    def update_director_row
    
        @d = Director.find(params["director_id"])
        @d.name = params["the_name"]
        @d.bio = params["the_bio"]
        @d.dob = params["the_dob"]
        @d.image_url = params["the_image_url"]
        @d.save
        @id = @d.id
    
       redirect_to("/directors/"+@id.to_s)
    
    end
    
    
    
    # Actions for Actor model (table)
    
    def actors_index

        @a = Actor.all
      
        render("actors_index.html.erb")
    end
    
    
    def actors_show
        
        @a = Actor.find(params["actor_id"])

        render("actors_show.html.erb")
    end

    
    def actor_destroy_row
        toast_d = Actor.find(params["actor_toast_id"])
        toast_d.destroy
        
        redirect_to("/actors")
    end
    
    
    def actors_new_form

        render("actors_new_form.html.erb")
    end
    
    
    def create_actor_row
        
        a = Actor.new
        a.name = params["the_name"]
        a.bio = params["the_bio"]
        a.dob = params["the_dob"]
        a.image_url = params["the_image_url"]
        a.save

        redirect_to("/actors")
    end
    
    
    def actors_edit_form

        @a = Actor.find(params["actor_id"])
    
        render("actors_edit_form.html.erb")
    end
      
    
    def update_actor_row
    
        @a = Actor.find(params["actor_id"])
        @a.name = params["the_name"]
        @a.bio = params["the_bio"]
        @a.dob = params["the_dob"]
        @a.image_url = params["the_image_url"]
        @a.save
        @id = @a.id
    
       redirect_to("/actors/"+@id.to_s)
    
    end
    
    
    # Actions for Movie model (table)
    
    def movies_index

        @m = Movie.all
      
        render("movies_index.html.erb")
    end
    
    
    def movies_show
        
        @m = Movie.find(params["movie_id"])

        render("movies_show.html.erb")
    end

    
    def movie_destroy_row
        toast_d = Movie.find(params["movie_toast_id"])
        toast_d.destroy
        
        redirect_to("/movies")
    end
    
    
    def actors_new_form

        render("actors_new_form.html.erb")
    end
    
    
    def create_actor_row
        
        a = Actor.new
        a.name = params["the_name"]
        a.bio = params["the_bio"]
        a.dob = params["the_dob"]
        a.image_url = params["the_image_url"]
        a.save

        redirect_to("/actors")
    end
    
    
    def actors_edit_form

        @a = Actor.find(params["actor_id"])
    
        render("actors_edit_form.html.erb")
    end
      
    
    def update_actor_row
    
        @a = Actor.find(params["actor_id"])
        @a.name = params["the_name"]
        @a.bio = params["the_bio"]
        @a.dob = params["the_dob"]
        @a.image_url = params["the_image_url"]
        @a.save
        @id = @a.id
    
       redirect_to("/actors/"+@id.to_s)
    
    end
    
    
    
    
end
