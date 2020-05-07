class GossipsController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
  end

  def new

  end

  def create
  @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 1) # avec xxx qui sont les données obtenues à partir du formulaire

    if @gossip.save
      redirect_to welcome_path
    else
      render 'new'
    end
  end
end
