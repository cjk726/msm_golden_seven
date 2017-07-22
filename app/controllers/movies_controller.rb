class MoviesController < ActionController::Base
    
    #  Tables are Director   Actor   Movie

    
    def index
          
    #   @d = Director.all

        render("index.html.erb")
    end
    
    
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
    
    
end
