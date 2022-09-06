class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show
        render json: Gym.find(params[:id])
    end

    def destroy
        Gym.find(params[:id]).destroy
    end

    private

    def render_not_found_response
        render json: {error: "Gym not found"}, status: :not_found
    end
end
