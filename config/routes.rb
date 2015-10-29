Rails.application.routes.draw do

  #get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/directors",                     { :controller => "movies", :action => "index_directors" })
  get("/delete_director/:id",           { :controller => "movies", :action => "delete_director" })
  get("/directors/new_form",            { :controller => "movies", :action => "new_director" })
  get("/create_director",     			{ :controller => "movies", :action => "create_director_row" })
  get("/directors/:id",                 { :controller => "movies", :action => "show_director" })
  get("/directors/:id/edit_form",       { :controller => "movies", :action => "edit_director" })
  get("/update_director/:id",       	{ :controller => "movies", :action => "update_director_row" })
end
