Rails.application.routes.draw do
	get "route66" => "route66#index"
	get "route66/controller/:id" => "route66#show", :as => :route66_controller
end
