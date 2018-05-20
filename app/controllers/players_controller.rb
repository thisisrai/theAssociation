class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    player = Player.new(player_params)
    if player.save
      redirect_to :root
    else
      flash[:errors] = player.errors.full_messages
      redirect_to "/players/new"
    end
  end

  def show
    @player = Player.find(id_params)
  end

  def edit
    @player = Player.find(id_params)
  end

  def patch
    player = Player.find(id_params)
    if player.update(player_params)
      redirect_to :root
    else
      flash[:errors] = player.errors.full_messages
      redirect_to player_edit(player.id)
    end
  end

  def delete
    player = Player.find(id_params)
    if player.delete
      redirect_to :root
    else
      flash[:errors] = player.errors.full_messages
      redirect_to :root
    end
  end

  def player_params
    params.require(:player).permit(:first_name, :last_name)
  end

  def id_params
    params.permit(:id).require(:id)
  end

end
