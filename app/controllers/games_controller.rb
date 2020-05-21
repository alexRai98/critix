class GamesController < ApplicationController

    def index
        @games = Game.all
        render json:@games 
    end

    def show
        @games= Game.find(params[:id])
        render json:@games
    end

    def create
        @game = Game.new(game_params)
        if @game.save
            render json: @game
        else
            render json: @game.errors
        end
    end
    
    private
    def game_params
        params.require(:game).permit(:name, :genre, :price, :release_date, :company_id)
    end

    def destroy
        @game = Game.find(params[:id]) # Find the game you want to destroy.
        @game.destroy # Destroy it.
        head :no_content # Render nothing back
    end
        
    def update
        @game = Game.find(params[:id]) #Find the game you want to update
        if @game.update_attributes(game_params) # Validation using the same private method as before
        render json: @game # render the updated record back
        else
        render json: @game.errors, status: :unprocessable_entity # render errors
        end
    end

end
