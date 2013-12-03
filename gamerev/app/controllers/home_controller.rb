class HomeController < ApplicationController
helper_method :sort_column, :sort_direction
  def index

#	@games = Game.all
	if params[:search]
	@games = Game.search(params[:search])
	else
	@games = Game.order(sort_column + " " + sort_direction) 
	end
 end

#private 

def sort_column
	Game.column_names.include?(params[:sort]) ? params[:sort] : "name"
end

def sort_direction
	%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end



end
