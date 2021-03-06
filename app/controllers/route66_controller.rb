class Route66Controller < ApplicationController

	before_filter :load_routes
	before_filter :load_controller, :only => :show

	def index
	end

	def show
	end
	
	def load_controller
		@controller = params[:id]
	end
	
	def load_routes
		@controllers = {}
    @routes = []
    Rails.application.routes.routes.routes.each do |r|
      verb = r.verb.to_s.scan( /\^(\w+)\$/).first
      verb = verb ? verb.first : ''
			name = r.name ? r.name : ''
      new_route = {:precedence => r.precedence,
                   :verb       => verb,
                   :controller => r.defaults[:controller],
                   :action     => r.defaults[:action],
                   :path       => r.path.spec,
                   :name       => name }
      @routes[r.precedence] = new_route
		end
	end

end

