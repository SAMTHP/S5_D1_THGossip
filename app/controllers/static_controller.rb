class StaticController < ApplicationController

  def index
  	@all_gossips = Gossip.all
  end

  def index_post
  	@user = User.new
  	@user.first_name = params["first_name"]
  	@user.last_name = params["last_name"]
  	@user.save
  	redirect_to  "/welcome/#{@user.first_name}"
  end

  def team
  end

  def contact
  end

  def welcome
  	@first_name =  params["first_name"]
  end

  def gossip
  	puts "Regarde ici"
  	@gossip_author = params["author"]
  	p @gossip_author
  	@user_gossip = Gossip.all.find_by(author:"Radagast")
  	p @user_gossip
  end
end
