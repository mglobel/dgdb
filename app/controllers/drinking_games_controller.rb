class DrinkingGamesController < ApplicationController
  before_action :set_drinking_game, only: [:show, :edit, :update, :destroy]

  # GET /drinking_games
  # GET /drinking_games.json
  def index
    @drinking_games = DrinkingGame.all
  end

  # GET /drinking_games/1
  # GET /drinking_games/1.json
  def show
  end

  # GET /drinking_games/new
  def new
    @drinking_game = DrinkingGame.new
  end

  # GET /drinking_games/1/edit
  def edit
  end

  # POST /drinking_games
  # POST /drinking_games.json
  def create
    @drinking_game = DrinkingGame.new(drinking_game_params)

    respond_to do |format|
      if @drinking_game.save
        format.html { redirect_to @drinking_game, notice: 'Drinking game was successfully created.' }
        format.json { render action: 'show', status: :created, location: @drinking_game }
      else
        format.html { render action: 'new' }
        format.json { render json: @drinking_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drinking_games/1
  # PATCH/PUT /drinking_games/1.json
  def update
    respond_to do |format|
      if @drinking_game.update(drinking_game_params)
        format.html { redirect_to @drinking_game, notice: 'Drinking game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @drinking_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drinking_games/1
  # DELETE /drinking_games/1.json
  def destroy
    @drinking_game.destroy
    respond_to do |format|
      format.html { redirect_to drinking_games_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinking_game
      @drinking_game = DrinkingGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drinking_game_params
      params.require(:drinking_game).permit(:name, :players, :rules)
    end
end
