class Api::MatchesController < ApplicationController
	def index
		matches = Match.find_by(winner_id: params[:player_id])
		render json: matches
	end
end