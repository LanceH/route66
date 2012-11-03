class Route66Controller < ApplicationController

	def index
		@routes = Rails.application.routes.routes.routes
	end

end

