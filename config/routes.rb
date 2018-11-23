Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "home#index"
  get "about" => "home#about"
  get "questions" => "questions#index"
  get "questions/:id/show" => "questions#show"
  post "questions/:id/check" => "questions#check"
  get "questions/:id/flag" => "questions#flag"

  post "check" => "home#check"

end
