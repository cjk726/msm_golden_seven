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
    
    
    def show
        
        @d = Director.find(params["director_id"])

        render("directors_show.html.erb")
    end

    
    
    
end
