require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :team
    end

    post '/teams' do
        puts params
        @team_hash = params["team"]
        puts @team_hash
        erb :super_hero
    end


end
