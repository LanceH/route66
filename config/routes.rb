Rails.application.routes.draw do
	match "route66" => "route66#index"
	match "route66/controller/:id" => "route66#show", :as => :route66_controller
end
