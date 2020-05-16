class Game::ClubsController < ApplicationController
  before_action :set_game_club, only: [:show, :edit, :update, :destroy]

  # GET /game/clubs
  # GET /game/clubs.json
  def index
    @game_clubs = Game::Club.all
  end

  # GET /game/clubs/1
  # GET /game/clubs/1.json
  def show
  end

  # GET /game/clubs/new
  def new
    @game_club = Game::Club.new
  end

  # GET /game/clubs/1/edit
  def edit
  end

  # POST /game/clubs
  # POST /game/clubs.json
  def create
    @game_club = Game::Club.new(game_club_params)

    respond_to do |format|
      if @game_club.save
        format.html { redirect_to @game_club, notice: 'Club was successfully created.' }
        format.json { render :show, status: :created, location: @game_club }
      else
        format.html { render :new }
        format.json { render json: @game_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game/clubs/1
  # PATCH/PUT /game/clubs/1.json
  def update
    respond_to do |format|
      if @game_club.update(game_club_params)
        format.html { redirect_to @game_club, notice: 'Club was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_club }
      else
        format.html { render :edit }
        format.json { render json: @game_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game/clubs/1
  # DELETE /game/clubs/1.json
  def destroy
    @game_club.destroy
    respond_to do |format|
      format.html { redirect_to game_clubs_url, notice: 'Club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_club
      @game_club = Game::Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_club_params
      params.require(:game_club).permit(:name, :about, :picture, :emb_location, :phone, :email, :webpage, :instagram, :facebook, :twitter, :youtube)
    end
end
