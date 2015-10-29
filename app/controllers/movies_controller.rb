class MoviesController < ApplicationController
	def index_directors
		 @list_of_directors = Director.all
	end

	def show_director
		@director_id = params[:id]
  		@i = Director.find_by({ :id => @director_id })
  		@edit_path = "/directors/" + @director_id + "/edit_form"
		@delete_path = "/delete_director/" + @director_id
	end

	def delete_director
		@director_id = params[:id]
  		@i = Director.find_by({ :id => @director_id })
  		@i.destroy
  		redirect_to("http://localhost:3000/directors")
	end

	def new_director
	end

    def create_director_row
  		@i = Director.new
  		@i.name = params[:the_name]
  		@i.bio = params[:the_bio]
  		@i.dob = params[:the_dob]
  		@i.image_url = params[:the_source]
  		@i.save
    	redirect_to("http://localhost:3000/directors")
  	end

	def edit_director
		@director_id = params[:id]
  		@i = Director.find_by({ :id => @director_id })
	end

	def update_director_row
  		@director_id = params[:id]
  		@i = Director.find_by({ :id => @director_id })
  		@i.name = params[:the_name]
  		@i.bio = params[:the_bio]
  		@i.dob = params[:the_dob]
  		@i.image_url = params[:the_source]
  		@i.save
  		redirect_to("http://localhost:3000/directors/" + @director_id)
  end
end