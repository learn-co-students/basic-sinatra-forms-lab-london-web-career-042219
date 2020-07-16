require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
    #binding.pry
  end

  # get "/team" do
  #   erb :team
  # end
  
  post "/team" do
    #binding.pry
    @name = params["name"]
    @coach = params["coach"]
    @pg = params["pg"]
    @sg = params["sg"]
    @sf= params["sf"]
    @pf= params["pf"]
    @c= params["c"]
    
    erb :team
end



  #Create a route that responds to a POST request at /team Have the form send a POST request to this route. Upon submission, pass the submitted data to the team.erb template.




end
