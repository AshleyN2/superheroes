class PowersController < ApplicationController

    # GET /powers
    def index 
        powers = Power.all
        render json: powers, status: :ok
    end


    # GET /powers/:id
    def show 
        power = Power.find(params[:id])
        render json: power, status: :ok
    end

    # PATCH /powers/:id
    def update 
        power = Power.find(params[:id])
        power.update!(power_params)
        render json: power, status: :ok
    end

    private 

    def power_params
        params.permit(:description)
    end

end
