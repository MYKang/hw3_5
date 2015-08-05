Rails.application.routes.draw do

  root :to => "insideout#mainpg"
  
  get ":controller(/:action(/:id))"
  post ":controller(/:action(/:id))"
  
end
