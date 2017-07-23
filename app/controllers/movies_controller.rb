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
    
    
    
    
    
    
    
end
