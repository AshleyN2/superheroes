class HerosController < ApplicationController
    
    def index 
        heroes = Hero.all
        render json: heroes,status: :ok
    end

    def show
        hero = Hero.find(params[:id])
            render json: hero,status: :ok, serializer: HeroPowerSerializer
    end

end
