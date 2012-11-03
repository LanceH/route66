class Route66Controller < ApplicationController

	before_filter :load_routes

	def index
	end
	
	def load_routes
    @routes = []
    Rails.application.routes.routes.routes.each do |r|
      verb = r.verb.to_s.scan( /\^(\w+)\$/).first
      verb = verb ? verb.first : ''
      new_route = {:precedence => r.precedence,
                   :verb       => verb,
                   :controller => r.defaults[:controller],
                   :action     => r.defaults[:action],
                   :path       => r.path.spec,
                   :name       => '' }
      @routes[r.precedence] = new_route
		end
		Rails.application.routes.routes.named_routes.each do |name, route|
			@routes[route.precedence][:name] = name
		end
	end

end

