class HerosController < ApplicationController

    # GET /heroes
    def index 
        heros = Hero.all
        render json: heros,status: :ok
    end

    # GET /heroes/:id
    def show
        hero = Hero.find(params[:id])
            render json: hero,status: :ok, serializer: HeroPowerSerializer
    end

end
